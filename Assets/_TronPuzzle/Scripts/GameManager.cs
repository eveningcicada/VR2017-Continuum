using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour {



    #region Private
    [SerializeField] GameObject disc;
    #endregion

    public GameObject player;
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
        if (Input.GetKeyDown(KeyCode.Space))
        {
            _levelManager.SwitchEnvironment();
        }	
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
        SceneManager.LoadScene(SceneManager.GetActiveScene().name);
        SteamVR_Fade.Start(Color.clear, 1f);
    }
}
