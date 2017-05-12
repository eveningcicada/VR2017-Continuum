using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DecalPlatform : MonoBehaviour {


    public Vector3 size;
    public Vector3 boundPosition;
    public Vector3 floatingPosition = new Vector3(0f,0f,0f);
    public Transform parentGenerator;
    
    /// <summary>
    /// The color of the decal platforms while floating
    /// </summary>
    public Color floatingColor;

    /// <summary>
    /// The time taken to move from the strt to finish positions
    /// </summary>
    public float lerpTime = 1f;

    private bool _isLerping;
    private float _timeStartedLerping;


    private Renderer myRenderer;


	// Use this for initialization
	void Start () {

	}
	
	// Update is called once per frame
	void Update () {
		
	}

    void FixedUpdate()
    {
        if (_isLerping)
        {
            float timeSinceStarted = Time.time - _timeStartedLerping;
            float percentageComeplete = timeSinceStarted / lerpTime;
            percentageComeplete = Mathf.Sin(percentageComeplete * Mathf.PI * 0.5f);

            transform.position = Vector3.Lerp(this.transform.position, boundPosition, percentageComeplete);
            
            if(percentageComeplete >= .9f)
            {
                Debug.Log(percentageComeplete);
                BindComplete();
            }

        }
        
    }

    public void Setup()
    {
        myRenderer = GetComponent<Renderer>();

        size = this.transform.localScale;
        boundPosition = this.transform.position;
        parentGenerator = this.transform.parent;
    }

    public void FloatStart()
    {
        this.transform.position = floatingPosition;
        myRenderer.material.SetColor("_EmissionColor", floatingColor);
        this.transform.parent = null;
        this.gameObject.SetActive(true);
    }

    public void BindStart()
    {
        _isLerping = true;
        _timeStartedLerping = Time.time;
    }

    public void BindComplete()
    {
        _isLerping = false;
        this.transform.parent = parentGenerator;
        this.gameObject.SetActive(false);
        if (parentGenerator.gameObject.activeSelf == false)
        {
            parentGenerator.gameObject.SetActive(true);
        }
    }
}
