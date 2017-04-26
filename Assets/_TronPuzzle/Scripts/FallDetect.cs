using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Valve.VR;

public class FallDetect : MonoBehaviour {

	[SerializeField] GameObject player;

	private GameObject _hmd;
	private float length;

	public LayerMask groundMask;

	// Use this for initialization
	void Start () {
		if (SteamVR.active == true) {
			_hmd = GameObject.Find ("VRCamera (eye)");;
		} else {
			_hmd = GameObject.Find ("FallbackObjects");
		}

		//Make the raycast just a bit longer than the height of the player
		length = _hmd.transform.localPosition.y + 0.1f;
		//Debug.Log (length);
	}
	
	// Update is called once per frame
	void FixedUpdate () {
		Ray groundCheck = new Ray (_hmd.transform.position, Vector3.down);
		RaycastHit hitInfo;


		if (Physics.SphereCast (groundCheck, 0.5f, out hitInfo, length, groundMask.value)) {
			
		} else {
			StartCoroutine (Dead ());
		}
		//Debug.Log (length);
		Debug.DrawRay (_hmd.transform.position, Vector3.down * length);
	}

    IEnumerator Dead() {
        SteamVR_Fade.Start (Color.black, 1f);
        yield return new WaitForSeconds(1f);
        
		player.transform.position = Vector3.zero;
		Vector3 temp = new Vector3 (0f, _hmd.transform.localPosition.y, 0f);
		_hmd.transform.localPosition = temp;
        SteamVR_Fade.Start (Color.clear, 1f);
    }
}
