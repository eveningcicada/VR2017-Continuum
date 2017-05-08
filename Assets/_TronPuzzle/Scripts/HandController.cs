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


    // Use this for initialization
    void Start()
    {
        _hand = GetComponent<Hand>();
        _hmd = GameManager.instance._hmd;
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
}
