using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Valve.VR.InteractionSystem;

public class Level_CityWindowLift : MonoBehaviour {

	[SerializeField] Transform lift1, lift2;

	static float range = 5;
	static float moveSpeed = 5;
	float height;

	// Use this for initialization
	void Start () {
		height = lift1.transform.position.y;
	}
	
	// Update is called once per frame
	void Update () {
		float newHeight = Remap (this.transform.localPosition.x, -0.4f, 0.4f, height - range, height + range);

		//We want some animation of the past lift moving up and down
		if (lift1.position.y < newHeight) {
			Vector3 temp = new Vector3 (0f, moveSpeed * Time.deltaTime, 0f);
			lift1.position += temp;
		}
		if (lift1.position.y > newHeight) {
			Vector3 temp = new Vector3 (0f, moveSpeed * Time.deltaTime, 0f);
			lift1.position -= temp;
		}
		//This ensures there's no vibration uo and down when the liftHeight almost equals the newHeight
		if (Mathf.Abs (lift1.position.y - newHeight) <= moveSpeed * Time.deltaTime) {
			Vector3 temp = new Vector3 (0f, newHeight, 0f);
			lift1.position = temp;
		}

		//The future lift will not be animated. Your changes in the past have put it as is in the future
		Vector3 temp2 = new Vector3 (0f, newHeight, 0f);
		lift2.position = temp2;
	}

	void HandHoverUpdate (Hand hand) {
		if (hand.GetStandardInteractionButton ()) {
			if (this.transform.localPosition.x <= 0.4 || this.transform.localPosition.x >= -0.4) {
				Vector3 temp = new Vector3 (hand.transform.position.x, 0f, 0f);
				this.transform.position = temp;
			}
		}
	}

	float Remap (float value, float from1, float to1, float from2, float to2) {
		return (value - from1) / (to1 - from1) * (to2 - from2) + from2;
	}
}
