﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SimpleTeleport : MonoBehaviour {

	Ray ray;
    Rigidbody myRB;


    public float length = 0f;

	SwitchEnvironment se;
	[SerializeField] GameObject player;

    void Start() {
        se = GameObject.Find("GameManager").GetComponent<SwitchEnvironment>();
        myRB = GetComponent<Rigidbody>();
    }

    void FixedUpdate () {
		//This code detects if a surface is close enough and if there is then it will remove the rotation
		//constraints so that the disk can tilt a bit before it falls. It's more realistic that way.
        ray = new Ray (this.transform.position, Vector3.down);

		if (Physics.Raycast (ray, length) == true) {
            myRB.constraints = RigidbodyConstraints.None;
		}
        else {
            myRB.constraints = RigidbodyConstraints.FreezeRotationX;
            myRB.constraints = RigidbodyConstraints.FreezeRotationZ;
        }

        Debug.DrawRay (this.transform.position, Vector3.down * length);
	}

	void OnTriggerStay (Collider other) {
		if (other.CompareTag ("Ground")) {
			//Getting to here means that the disk is on the floor. Now check for input.
			if (SteamVR.active == false) {
				if (Input.GetKeyDown (KeyCode.Space)) {
					player.transform.position = this.transform.position;
				}
			} else {
				if (se.VRHand1.controller.GetPressDown (Valve.VR.EVRButtonId.k_EButton_SteamVR_Trigger) ||
					se.VRHand2.controller.GetPressDown (Valve.VR.EVRButtonId.k_EButton_SteamVR_Trigger)) {
					player.transform.position = this.transform.position;
				}
			}
		}
	}
}
