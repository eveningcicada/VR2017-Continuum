using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Timers;

public class Generator : MonoBehaviour {

	[SerializeField] DecalPlatform decalPrefab;

    #region Public
    public enum EnvironmentID
    {
        Both,
        Env1,
        Env2
    }
    #endregion

    #region Protected
    [Space(5)]
    [SerializeField]
    protected EnvironmentID environmentID = EnvironmentID.Both;

    [SerializeField]
    protected bool nullifySpawning;

    [Space(10)]
    [SerializeField]
    protected int numDecals;

    [SerializeField]
    protected Color decalColor;

    [Space(5)]
    [SerializeField]
    protected bool usingContraints = false;

    [Space(2)]
    [SerializeField]
    protected float bounds_min_x = -2,
        bounds_max_x = 2,
        bounds_min_z = -2,
        bounds_max_z = 2,
        minDepth_y = -0.1f,
        maxDepth_y = -0.1f;

    [Space(2)]
    [SerializeField]
    protected float decalSize_min_x = 0.25f, 
        decalSize_max_x = 2.5f,
        decalSize_min_y = 0.05f, 
        decalSize_max_y = 0.25f, 
        decalSize_min_z = 0.25f, 
        decalSize_max_z = 2.5f;

    protected Renderer myRenderer;

    protected const float DAMPNER = .45f;
    protected const float MIN_VALUE_OFFSET = .1f;
    #endregion

    // Use this for initialization
    void Start ()
	{
        CreatePlatform(nullifySpawning, usingContraints);

    }
	
	// Update is called once per frame
	void Update ()
	{
        BreathingEffect(decalColor);
    }

      //For clamping inspector to certain vlaues
//    private void OnValidate()
//    {

//        decalSize_min_x = Mathf.Clamp(decalSize_min_x, 0.1f, 0.5f);
//        //decalSize_max_x = 2.5f;
//        //decalSize_min_y = 0.05f;
//        //decalSize_max_y = 0.25f;
//        //decalSize_min_z = 0.25f;
//        //decalSize_max_z = 2.5f;
//}

    public float Hermite(float t)
    {
        return -t * t * t * 2f + t * t * 3f;
    }


    //-------------------------------------------------
    public Vector3 RandomVector3(float minx, float maxx, float miny, float maxy, float minz, float maxz)
    {
        float randSizeX = Random.Range(minx, maxx);
        float randSizeY = Random.Range(miny, maxy);
        float randSizeZ = Random.Range(minz, maxz);

        return new Vector3(randSizeX, randSizeY, randSizeZ);
    }


    //-------------------------------------------------
    //Create a platform using the number of decals
    public void CreatePlatform(bool nullify = false, bool constrain = false)
    {
        if(nullify == true)
        {
            this.tag = environmentID.ToString();
            return;
        }

        if(constrain == true)
        {
            for (int i = 0; i < numDecals; i++)
            {
                DecalPlatform decal = Instantiate(decalPrefab) as DecalPlatform;
    
                Vector3 randomSize = RandomVector3(decalSize_min_x, decalSize_max_x, decalSize_min_y, decalSize_max_y, decalSize_min_z, decalSize_max_z);
                Vector3 randomPos = RandomVector3(bounds_min_x, bounds_max_x, minDepth_y, maxDepth_y, bounds_min_z, bounds_max_z);

                while(IsWithinConstraints(randomSize, randomPos) == false)
                {
                    randomSize = RandomVector3(decalSize_min_x, decalSize_max_x, decalSize_min_y, decalSize_max_y, decalSize_min_z, decalSize_max_z);
                    randomPos = RandomVector3(bounds_min_x, bounds_max_x, minDepth_y, maxDepth_y, bounds_min_z, bounds_max_z);
                }

                decal.transform.localScale = randomSize;
                decal.transform.position = randomPos;
                decal.transform.parent = this.transform;
                decal.Setup();

            }
        }
        else
        {
            for (int i = 0; i < numDecals; i++)
            {
                DecalPlatform decal = Instantiate(decalPrefab) as DecalPlatform;

                Vector3 randomSize = RandomVector3(decalSize_min_x, decalSize_max_x, decalSize_min_y, decalSize_max_y, decalSize_min_z, decalSize_max_z);
                Vector3 randomPos = RandomVector3(bounds_min_x, bounds_max_x, minDepth_y, maxDepth_y, bounds_min_z, bounds_max_z);

                decal.transform.localScale = randomSize;
                decal.transform.position = randomPos;
                decal.transform.parent = this.transform;
                decal.Setup();
            }
        }

        CombineMeshes();
        this.tag = environmentID.ToString();
    }


    //-------------------------------------------------
    //Combine the multiple meshes into a single mesh
    //Called after creating the platform
    public void CombineMeshes()
    {

        Material meshMaterial = GetComponentInChildren<MeshRenderer>().material;

        MeshFilter[] meshFilters = GetComponentsInChildren<MeshFilter>();
        CombineInstance[] combine = new CombineInstance[meshFilters.Length];
        int j = 0;
        while (j < meshFilters.Length)
        {
            combine[j].mesh = meshFilters[j].sharedMesh;
            combine[j].transform = meshFilters[j].transform.localToWorldMatrix;
            meshFilters[j].gameObject.SetActive(false);
            j++;
        }

        this.gameObject.AddComponent<MeshFilter>();
        this.gameObject.AddComponent<MeshRenderer>();

        transform.GetComponent<MeshFilter>().mesh = new Mesh();
        transform.GetComponent<MeshFilter>().mesh.CombineMeshes(combine);
        transform.gameObject.SetActive(true);

        myRenderer = GetComponent<Renderer>();
        myRenderer.material = meshMaterial;

        this.gameObject.AddComponent<MeshCollider>();
    }


    //-------------------------------------------------
    public bool IsWithinConstraints(Vector3 scale, Vector3 position)
    {
        bool _isValid = true;

        float min_x = position.x - (scale.x * .4f);
        float max_x = position.x + (scale.x * .4f);
        float min_z = position.z - (scale.z * .4f);
        float max_z = position.z + (scale.z * .4f);

        if(min_x < bounds_min_x || max_x > bounds_max_x|| min_z < bounds_min_z|| max_z > bounds_max_z)
        {
            _isValid = false;
        }
        return _isValid;
    }


    //-------------------------------------------------
    //Have the floors glow with a breathing effect
    public void BreathingEffect(Color baseColor)
    {
        float emission = Hermite((Mathf.PingPong(Time.time * DAMPNER, 1.0f))) + MIN_VALUE_OFFSET;

        Color finalColor = baseColor * Mathf.LinearToGammaSpace(emission);
   

        myRenderer.material.SetColor("_EmissionColor", finalColor);
    } 
}
