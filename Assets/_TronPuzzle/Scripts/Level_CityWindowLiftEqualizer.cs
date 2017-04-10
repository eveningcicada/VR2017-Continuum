using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Level_CityWindowLiftEqualizer : MonoBehaviour {

	public GameObject liftPast, liftFuture;
	Level_CityWindowLift wl;

	// Use this for initialization
	void Start () {
		wl = GameObject.Find ("DragBois").GetComponent<Level_CityWindowLift> ();
	}
	
	// Update is called once per frame
	void Update () {
		//The future lift will not be animated. Your changes in the past have put it as is in the future
		Vector3 temp = new Vector3 (liftFuture.transform.position.x, wl.newHeight, liftFuture.transform.position.z);
		liftFuture.transform.position = temp;

		if (liftFuture.activeInHierarchy == true) {
			liftPast.transform.position = liftFuture.transform.position;
		}
	}
}
