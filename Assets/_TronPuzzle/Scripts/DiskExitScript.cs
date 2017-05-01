using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Valve.VR.InteractionSystem;
using UnityEngine.SceneManagement;

public class DiskExitScript : MonoBehaviour {

	public Transform indicator;
	public Material glow;
	public Material keyHole;

    int sceneNumber = 0;
    int scenesSwitched = 0;

    bool inHole = false;

	// Use this for initialization
	void Start () {
        
        
	}

	
	// Update is called once per frame
	void Update () {
        if (Input.GetKeyDown(KeyCode.Alpha8))
        {
            StartCoroutine(GoToNextLevel());
        }
    
		if (inHole == true) {
            this.transform.position = indicator.position;
            this.transform.rotation = indicator.rotation;
            StartCoroutine(GoToNextLevel());
        }
	}

	void HandAttachedUpdate (Hand hand) {
		if (Vector3.Distance (this.transform.position, indicator.position) <= 0.1) {
			indicator.gameObject.GetComponent<MeshRenderer> ().material = glow;

			if (hand.GetStandardInteractionButton () == false) {
				hand.DetachObject (gameObject);

				this.transform.position = indicator.position;
				this.transform.rotation = indicator.rotation;

                inHole = true;
			}
		} else {
			indicator.gameObject.GetComponent<MeshRenderer> ().material = keyHole;
		}
	}

    IEnumerator GoToNextLevel ()
    {
        sceneNumber++;
        Debug.Log("going to new level " + sceneNumber );
        yield return new WaitForSecondsRealtime(1f);
        SceneManager.LoadScene(sceneNumber);
        


    }
}
