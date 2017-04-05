using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Valve.VR.InteractionSystem;

public class Level_CityWindowLift : MonoBehaviour {

	public Transform lift1, lift2;

	static float sliderMin = 7.24f;
	static float sliderMax = 8.04f;

	static float heightRange = 5;
	static float moveSpeed = 1;
	float height;

	// Use this for initialization
	void Start () {
		height = lift1.transform.position.y;
	}
	
	// Update is called once per frame
	void Update () {
		float newHeight = Remap (this.transform.position.x, sliderMin, sliderMax, height - heightRange, height + heightRange);
		//We want some animation of the past lift moving up and down
		if (lift1.position.y < newHeight) {
			Debug.Log ("moveUp");
			Vector3 temp = new Vector3 (lift1.position.x, lift1.position.y + moveSpeed * Time.deltaTime, lift1.position.z);
			lift1.position = temp;
		}
		if (lift1.position.y > newHeight) {
			Debug.Log ("moveDown");
			Vector3 temp = new Vector3 (lift1.position.x, lift1.position.y - moveSpeed * Time.deltaTime, lift1.position.z);
			lift1.position = temp;
		}
		//This ensures there's no vibration uo and down when the liftHeight almost equals the newHeight
		if (Mathf.Abs (lift1.position.y - newHeight) <= moveSpeed * Time.deltaTime) {
			Vector3 temp = new Vector3 (lift1.position.x, newHeight, lift1.position.z);
			lift1.position = temp;
		}

		//The future lift will not be animated. Your changes in the past have put it as is in the future
		Vector3 temp2 = new Vector3 (lift2.position.x, newHeight, lift2.position.z);
		lift2.position = temp2;

		//Reset the slider if it moves past the min and max values.
		//They'll be put back just before min and max
		if (this.transform.position.x > sliderMax) {
			Debug.Log ("pastMax");
			Vector3 temp = new Vector3 (sliderMax - 0.01f, this.transform.position.y, this.transform.position.z);
			this.transform.position = temp;
		}
		if (this.transform.position.x < sliderMin) {
			Debug.Log ("pastMin");
			Vector3 temp = new Vector3 (sliderMin + 0.01f, this.transform.position.y, this.transform.position.z);
			this.transform.position = temp;
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
