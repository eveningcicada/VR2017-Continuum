using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class LevelManager : MonoBehaviour {

    public Dictionary<Generator.EnvironmentID, List<Generator>> generatorDict = new Dictionary<Generator.EnvironmentID, List<Generator>>();
    public List<Generator> generatorsList_both;
    public List<Generator> generatorsList_env1;
    public List<Generator> generatorsList_env2;

    public Scene nextLevel;

    private List<DecalPlatform> decalPlatformList = new List<DecalPlatform>();

    private Generator.EnvironmentID activeEnv;

	// Use this for initialization
	void Start () {
        SetupGeneratorGroups();
        SetupScene();
	}
	
	// Update is called once per frame
	void Update () {
		
	}



    //-------------------------------------------------
    public void SetupGeneratorGroups()
    {
        GameObject[] generatorObjs = GameObject.FindGameObjectsWithTag("Both");
        foreach (GameObject g in generatorObjs)
        {
            if (g.GetComponent<Generator>() != null)
            {
                generatorsList_both.Add(g.GetComponent<Generator>());
            }
            else
            {
                Debug.LogError("Missing Component Exception: Gameobject-" + g.name + " does not have Generator component attached and can not be added to dictionary.", g);
            }
        }

        generatorObjs = GameObject.FindGameObjectsWithTag("Env1");
        foreach (GameObject g in generatorObjs)
        {
            if (g.GetComponent<Generator>() != null)
            {
                generatorsList_env1.Add(g.GetComponent<Generator>());
            }
            else
            {
                Debug.LogError("Missing Component Exception: Gameobject-" + g.name + " does not have Generator component attached and can not be added to dictionary.", g);
            }         
        }

        generatorObjs = GameObject.FindGameObjectsWithTag("Env2");
        foreach (GameObject g in generatorObjs)
        {
            if (g.GetComponent<Generator>() != null)
            {
                generatorsList_env2.Add(g.GetComponent<Generator>());
            }
            else
            {
                Debug.LogError("Missing Component Exception: Gameobject-" + g.name + " does not have Generator component attached and can not be added to dictionary.", g);
            }  
        }

        AddToDictionary();

    }



    //-------------------------------------------------
    public void AddToDictionary()
    {
        generatorDict.Clear();
        generatorDict.Add(Generator.EnvironmentID.Both, generatorsList_both);
        generatorDict.Add(Generator.EnvironmentID.Env1, generatorsList_env1);
        generatorDict.Add(Generator.EnvironmentID.Env2, generatorsList_env2);

    }



    //-------------------------------------------------
    //Handles scene set-up, deactivates objects that should be deactive
    private void SetupScene()
    {
        if(activeEnv != Generator.EnvironmentID.Env1)
        {
            activeEnv = Generator.EnvironmentID.Env1; ;
        }

        foreach(Generator g in generatorDict[Generator.EnvironmentID.Env2])
        {
            //ShiftPlatformsToFloat(g);
            g.gameObject.SetActive(false);
        }
    }



    //-------------------------------------------------
    public void SwitchEnvironment()
    {
        List<Generator> activate;
        List<Generator> deactivate;

        if(activeEnv == Generator.EnvironmentID.Env1)
        {
            activate = generatorDict[Generator.EnvironmentID.Env2];
            deactivate = generatorDict[Generator.EnvironmentID.Env1];
            
            foreach(Generator gen in activate)
            {
                //ShiftPlatformsToBind(gen);
                gen.gameObject.SetActive(true);

                //if(gen.gameObject.activeSelf == false)
                //{
                //    gen.gameObject.SetActive(true);
                //}
                
            }

            foreach(Generator gen in deactivate)
            {
                //ShiftPlatformsToFloat(gen);
                gen.gameObject.SetActive(false);
            }
            activeEnv = Generator.EnvironmentID.Env2;
            return;
        }


        if (activeEnv == Generator.EnvironmentID.Env2)
        {
            activate = generatorDict[Generator.EnvironmentID.Env1];
            deactivate = generatorDict[Generator.EnvironmentID.Env2];

            foreach (Generator gen in activate)
            {
                //ShiftPlatformsToBind(gen);
                gen.gameObject.SetActive(true);
            }

            foreach (Generator gen in deactivate)
            {
                //ShiftPlatformsToFloat(gen);
                gen.gameObject.SetActive(false);
            }
            activeEnv = Generator.EnvironmentID.Env1;
            return;
        }
    }



    //-------------------------------------------------
    public void ShiftPlatformsToFloat(Generator gen)
    {
        DecalPlatform[] _childPlatforms = gen.GetComponentsInChildren<DecalPlatform>(true);

        if (_childPlatforms != null)
        {
            foreach (DecalPlatform dp in _childPlatforms)
            {
                dp.FloatStart();
                decalPlatformList.Add(dp);
            }
        }
        else
        {
            return;
        }
    }



    //-------------------------------------------------
    public void ShiftPlatformsToBind(Generator gen)
    {
        DecalPlatform[] _childPlatforms = decalPlatformList.ToArray();

        if (_childPlatforms != null)
        {
            foreach (DecalPlatform dp in _childPlatforms)
            {
                dp.BindStart();
                decalPlatformList.Remove(dp);
            }
            //gen.gameObject.SetActive(true);
        }
        else
        {
            gen.gameObject.SetActive(true);
            return;
        }
    }
}
