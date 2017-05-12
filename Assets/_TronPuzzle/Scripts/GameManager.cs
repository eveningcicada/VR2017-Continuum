using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour {



    #region Private
    [SerializeField] GameObject disc;
    private bool shouldRestart;
    #endregion

    public GameObject player
    {
        get
        {
            return GameObject.Find("Player");
        }
        set
        {
            player = value;
        }
    }
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

        if(shouldRestart == true)
        {
            SceneManager.LoadScene(SceneManager.GetActiveScene().name);
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
            //Do nothing
        }
        else
        {
            StartCoroutine(Restart());   
        }
    }

    public IEnumerator Restart()
    {
        SteamVR_Fade.Start(Color.black, 1f);
        yield return new WaitForSeconds(3f);
        SceneManager.LoadScene(SceneManager.GetActiveScene().name);
    }

    public IEnumerator NextLevel(Scene nextLevel)
    {
        SteamVR_Fade.Start(Color.black, 1f);
        yield return new WaitForSeconds(1.5f);
        SceneManager.LoadScene(nextLevel.name);
    }

}
