using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Valve.VR;

public class FallDetect : MonoBehaviour {

	[SerializeField] GameObject player;
	[SerializeField] GameObject disk;

	private SteamVR_Camera _hmd;
	public LayerMask ignoreLayer;

	// Use this for initialization
	void Start () {
		_hmd = FindObjectOfType<SteamVR_Camera> ();

	}
	
	// Update is called once per frame
	void Update () {
		Ray groundCheck = new Ray (_hmd.transform.position, Vector3.down);
		RaycastHit hitInfo;

		if (Physics.SphereCast (groundCheck, .5f, out hitInfo, ignoreLayer)) {
			
		} else {
			StartCoroutine (Dead ());
		}
	}



    IEnumerator Dead() {
        SteamVR_Fade.Start (Color.black, 1f);
        yield return new WaitForSeconds(1f);
        player.transform.position = Vector3.zero;
        disk.transform.position = new Vector3(0, 0.531f, 0.815f);
        SteamVR_Fade.Start (Color.clear, 1f);
    }
}
