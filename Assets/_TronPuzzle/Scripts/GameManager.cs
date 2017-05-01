using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour {



    #region Private
    [SerializeField] GameObject player;
    [SerializeField] GameObject disc;
    #endregion


    public LayerMask collisionLayer;
    public LevelManager _levelManager
    {
        get
        {
            return FindObjectOfType<LevelManager>();
        }
        set
        {
            _levelManager = value;
        }
    }

    public SteamVR_Camera _hmd
    {
        get
        {
            return FindObjectOfType<SteamVR_Camera>();
        }
        set
        {
            _hmd = value;
        }
    }

    public static GameManager instance;

	// Use this for initialization
	void Start () {
        if (instance == null)
        {
            instance = this;
            DontDestroyOnLoad(this);
        }
        else
        {
            Destroy(gameObject);
        }
    }
	
	// Update is called once per frame
	void Update () {
		
	}

    private void FixedUpdate()
    {
        FallDectect();
    }

    void FallDectect()
    {
        float length = _hmd.transform.localPosition.y + 0.1f;
        Ray groundCheck = new Ray(_hmd.transform.position, Vector3.down);
        RaycastHit hitInfo;

        if (Physics.SphereCast(groundCheck, .5f, out hitInfo, length, collisionLayer))
        {

        }
        else
        {
            StartCoroutine(Dead());
        }
    }

    IEnumerator Dead()
    {
        SteamVR_Fade.Start(Color.black, 1f);
        yield return new WaitForSeconds(1f);
        player.transform.position = Vector3.zero;
        disc.transform.position = new Vector3(0, 0.531f, 0.815f);
        SteamVR_Fade.Start(Color.clear, 1f);
    }
}
