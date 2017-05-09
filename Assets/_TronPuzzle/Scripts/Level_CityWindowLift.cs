using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Valve.VR.InteractionSystem;

public class Level_CityWindowLift : MonoBehaviour {

    public Transform lift;
	MeshRenderer liftRenderer;
	Material regularMat;
	[SerializeField] Material triPlanerMat;

	static float sliderMin = 7.24f;
	static float sliderMax = 8.04f;

	static float heightRange = 5;
	static float moveSpeed = 1;
	float height;

	public float newHeight;

	// Use this for initialization
	void Start () {
		height = lift.transform.position.y;

		liftRenderer = lift.GetComponent<MeshRenderer> ();
		//Store the lift FloorGenerator's material
		regularMat = liftRenderer.material;
	}
	
	// Update is called once per frame
	void Update () {
		newHeight = Remap (this.transform.position.x, sliderMin, sliderMax, height - heightRange, height + heightRange);
		//We want some animation of the past lift moving up and down
		if (lift.position.y < newHeight) {
			Vector3 temp = new Vector3 (lift.position.x, lift.position.y + moveSpeed * Time.deltaTime, lift.position.z);
			lift.position = temp;
		}
		if (lift.position.y > newHeight) {
			Vector3 temp = new Vector3 (lift.position.x, lift.position.y - moveSpeed * Time.deltaTime, lift.position.z);
			lift.position = temp;
		}
		//This ensures there's no vibration up and down when the liftHeight almost equals the newHeight
		if (Mathf.Abs (lift.position.y - newHeight) <= moveSpeed * Time.deltaTime) {
			Vector3 temp = new Vector3 (lift.position.x, newHeight, lift.position.z);
			lift.position = temp;
		}

		//Reset the slider if it moves past the min and max values.
		//They'll be put back just before min and max
		if (this.transform.position.x > sliderMax) {
			Vector3 temp = new Vector3 (sliderMax - 0.01f, this.transform.position.y, this.transform.position.z);
			this.transform.position = temp;
		}
		if (this.transform.position.x < sliderMin) {
			Vector3 temp = new Vector3 (sliderMin + 0.01f, this.transform.position.y, this.transform.position.z);
			this.transform.position = temp;
		}

		//Make sure you can't teleport when the lift is on
		if (lift.position.y != newHeight) {
			lift.gameObject.layer = 0;	//Default
			liftRenderer.material = triPlanerMat;	//Visual cue you can't teleport
		} else {
			lift.gameObject.layer = 10;	//Ground
			liftRenderer.material = regularMat;		//Visual cue you can teleport
		}
	}

	void HandHoverUpdate (Hand hand) {
		Debug.Log ("good");
		if (hand.GetStandardInteractionButton () || Input.GetKey(KeyCode.Z)) {
			if (this.transform.position.x <= sliderMax || this.transform.position.x >= sliderMin) {
				Vector3 temp = new Vector3 (hand.transform.position.x, this.transform.position.y, this.transform.position.z);
				this.transform.position = temp;
			}
		}
	}

	float Remap (float value, float from1, float to1, float from2, float to2) {
		return (value - from1) / (to1 - from1) * (to2 - from2) + from2;
	}
}
