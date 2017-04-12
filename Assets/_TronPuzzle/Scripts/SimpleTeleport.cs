using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SimpleTeleport : MonoBehaviour {

	Rigidbody myRB;
	public float length = 0.2f;

	SwitchEnvironment se;
	[SerializeField] GameObject player;
	private GameObject _hmd;

    void Start() {
		if (SteamVR.active == true) {
			_hmd = GameObject.Find ("VRCamera (eye)");;
		} else {
			_hmd = GameObject.Find ("FallbackObjects");
		}

        se = GameObject.Find("GameManager").GetComponent<SwitchEnvironment>();
        myRB = GetComponent<Rigidbody>();
    }

    void FixedUpdate () {
		//This code detects if a surface is close enough and if there is then it will remove the rotation
		//constraints so that the disk can tilt a bit before it falls. It's more realistic that way.
        Ray tiltCheck = new Ray (this.transform.position, Vector3.down);

		if (Physics.Raycast (tiltCheck, 1f) == true) {
            myRB.constraints = RigidbodyConstraints.None;
		}
        else {
            myRB.constraints = RigidbodyConstraints.FreezeRotationX;
            myRB.constraints = RigidbodyConstraints.FreezeRotationZ;
        }


		Ray groundCheck = new Ray (this.transform.position, Vector3.down);
		RaycastHit hitInfo;

		if (Physics.Raycast (groundCheck, out hitInfo, length) == true) {
			if (hitInfo.collider.CompareTag ("Ground")) {
				//Getting to here means that the disk is on the floor. Now check for input.
				if (SteamVR.active == false) {
					if (Input.GetKeyDown (KeyCode.Space)) {
						Vector3 temp = hitInfo.point;
						temp.x += _hmd.transform.localPosition.x;
						temp.z += _hmd.transform.localPosition.z;

						player.transform.position = temp;


						Vector3 temp2 = new Vector3 (0f, _hmd.transform.localPosition.y, 0f);
						_hmd.transform.localPosition = temp2;
					}
				} else {
					if (se.VRHand1.controller.GetPressDown (Valve.VR.EVRButtonId.k_EButton_Grip) ||
					   se.VRHand2.controller.GetPressDown (Valve.VR.EVRButtonId.k_EButton_Grip)) {
						Vector3 temp = hitInfo.point;
						temp.x -= _hmd.transform.localPosition.x;
						temp.z -= _hmd.transform.localPosition.z;

						player.transform.position = temp;


						Vector3 temp2 = new Vector3 (0f, _hmd.transform.localPosition.y, 0f);
						_hmd.transform.localPosition = temp2;
					}
				}
			}
		}

		//Debug.DrawRay (this.transform.position, Vector3.down * length);
	}
}
