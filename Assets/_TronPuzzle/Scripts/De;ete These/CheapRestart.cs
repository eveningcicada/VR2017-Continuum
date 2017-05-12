using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Valve.VR.InteractionSystem;
using UnityEngine.SceneManagement;

public class CheapRestart : MonoBehaviour {
    public Transform disc;
    public Transform goal;
    public bool inGoal;
	
    // Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {

        if(disc == null)
        {
            disc = GameObject.Find("Disc Collider").GetComponent<Transform>();
        }
        if(goal == null)
        {
            goal = GameObject.Find("PlaceDIskHere").GetComponent<Transform>();
        }

        if (Vector3.Distance(disc.position,goal.position) < 1)
        {
            inGoal = true;
        }
        else{
            inGoal = false;
        }

        if(inGoal ==  true || Input.GetKeyDown(KeyCode.R)){
            //Restart();
        }

    }


    void Restart()
    {
        SteamVR_Fade.Start(Color.black, 1f);
        SceneManager.LoadScene(SceneManager.GetActiveScene().name);
        Debug.Log("Im Right");
        SteamVR_Fade.Start(Color.clear, 1f);
    }
}
