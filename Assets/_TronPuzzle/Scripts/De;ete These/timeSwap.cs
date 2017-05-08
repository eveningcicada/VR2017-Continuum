using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class timeSwap : MonoBehaviour {

    public GameObject room1;
    public GameObject room2;

	// Use this for initialization
	void Start () {
        room1.SetActive(true);
        room2.SetActive(false);
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKeyDown(KeyCode.Z))
        {
            room1.SetActive(true);
            room2.SetActive(false);
            Debug.Log("room1 active");
        }
        if (Input.GetKeyDown(KeyCode.X))
        {
            room1.SetActive(false);
            room2.SetActive(true);
            Debug.Log("room2 active");
        }
	}
}
