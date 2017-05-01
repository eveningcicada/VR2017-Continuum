using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Generator : MonoBehaviour {

	[SerializeField] Transform decalPrefab;
    //[SerializeField] Transform decalPrefab2;

	public int numDecals;
	[Space(10)]
	public float groundDepth = -0.1f;
	[Space(5)]
	public float groundX = 5;
	public float groundZ = 5;

	// Use this for initialization
	void Start ()
	{
		//The parameters we put in = the size of the platform. But the script spawns cubes from -groundX
		//to groundX. Same for groundZ. Which doubles the width and length.
		groundX /= 2;
		groundZ /= 2;

		for(int i = 0; i < numDecals; i++)
		{
			Transform decal = Instantiate(decalPrefab) as Transform;

			float randX = Random.Range(0.25f, 2.5f);
			float randY = Random.Range(0.05f, 0.25f);
			float randZ = Random.Range(0.25f, 2.5f);

			decal.localScale = new Vector3(randX, randY, randZ);
			decal.position = new Vector3(Random.Range(-groundX, groundX), groundDepth, Random.Range(-groundZ, groundZ));
			decal.position += this.transform.position;
			decal.parent = this.transform;
			decal.tag = this.gameObject.tag;
		}
	}
	
	// Update is called once per frame
	void Update ()
	{
		
	}
}
