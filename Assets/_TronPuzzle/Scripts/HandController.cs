using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Valve.VR;
using Valve.VR.InteractionSystem;

public class HandController : MonoBehaviour {

    private Hand _hand;
    private SteamVR_Camera _hmd;

    private Valve.VR.EVRButtonId triggerButton = Valve.VR.EVRButtonId.k_EButton_SteamVR_Trigger;
    private Valve.VR.EVRButtonId touchpad = Valve.VR.EVRButtonId.k_EButton_SteamVR_Touchpad;

    public Throwable disc;

    public Transform goal;
    public bool inGoal;



    // Use this for initialization
    void Start()
    {
        _hand = GetComponent<Hand>();
        _hmd = GameManager.instance._hmd;

        if (goal == null)
        {
            goal = GameObject.Find("PlaceDIskHere").GetComponent<Transform>();
        }
    }

    // Update is called once per frame
    void Update()
    {
       
        if (_hand.controller != null)
        {

            if (_hand.GetStandardInteractionButtonDown())
            {
                HandleTriggerClicked();
            }

            if (_hand.controller.GetPressDown(touchpad))
            {
                GameManager.instance._levelManager.SwitchEnvironment();
            }

            if (_hand.controller.GetPressDown(Valve.VR.EVRButtonId.k_EButton_Grip)){
                disc.GetComponent<Disc>().Teleport();
            }
        }


        if ((Vector3.Distance(disc.transform.position, goal.position) < 1 ) || Input.GetKeyDown(KeyCode.R))
        {
           inGoal = true;
        }
        else
        {
            inGoal = false;
        }

        if(inGoal == true)
        {
            PlaceInGoal();
        }

    }

    private void HandleTriggerClicked()
    {
        Vector3 hmdLookDir = _hmd.transform.forward;
        Vector3 hmdToHand = _hand.transform.position - _hmd.transform.position;

        float angle = Vector3.Angle(hmdLookDir, hmdToHand);

        if (angle > 115 && angle < 150)
        {
            ReloadDisc();
        }

    }

    private void ReloadDisc()
    {
        _hand.AttachObject(disc.gameObject);
    }

    private void PlaceInGoal()
    {
        _hand.DetachObject(disc.gameObject);
        disc.transform.position = goal.transform.position;
        disc.transform.rotation = goal.transform.rotation;
        disc.GetComponent<Rigidbody>().isKinematic = true;
        StartCoroutine(GameManager.instance.Restart());
        //StartCoroutine(GameManager.instance.NextLevel(GameManager.instance._levelManager.nextLevel)); 
        
    }
}
