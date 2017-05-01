using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LevelManager : MonoBehaviour {

    public Dictionary<Generator.EnvironmentID, List<Generator>> generatorDict = new Dictionary<Generator.EnvironmentID, List<Generator>>();
    public List<Generator> generatorsList_both;
    public List<Generator> generatorsList_env1;
    public List<Generator> generatorsList_env2;

    private Generator.EnvironmentID activeEnv;

	// Use this for initialization
	void Start () {
        SetupGeneratorGroups();
        SetupScene();
	}
	
	// Update is called once per frame
	void Update () {
		
	}


    public void SetupGeneratorGroups()
    {
        GameObject[] generatorObjs = GameObject.FindGameObjectsWithTag("Both");
        foreach (GameObject g in generatorObjs)
        {
            generatorsList_both.Add(g.GetComponent<Generator>());
        }

        generatorObjs = GameObject.FindGameObjectsWithTag("Env1");
        foreach (GameObject g in generatorObjs)
        {
            generatorsList_env1.Add(g.GetComponent<Generator>());
        }

        generatorObjs = GameObject.FindGameObjectsWithTag("Env2");
        foreach (GameObject g in generatorObjs)
        {
            generatorsList_env2.Add(g.GetComponent<Generator>());
        }

        AddToDictionary();

    }

    public void AddToDictionary()
    {
        generatorDict.Clear();
        generatorDict.Add(Generator.EnvironmentID.Both, generatorsList_both);
        generatorDict.Add(Generator.EnvironmentID.Env1, generatorsList_env1);
        generatorDict.Add(Generator.EnvironmentID.Env2, generatorsList_env2);

    }

    private void SetupScene()
    {
        if(activeEnv != Generator.EnvironmentID.Env1)
        {
            activeEnv = Generator.EnvironmentID.Env1; ;
        }

        foreach(Generator g in generatorDict[Generator.EnvironmentID.Env2])
        {
            g.gameObject.SetActive(false);
        }
    }

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
                gen.gameObject.SetActive(true);
            }

            foreach(Generator gen in deactivate)
            {
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
                gen.gameObject.SetActive(true);
            }

            foreach (Generator gen in deactivate)
            {
                gen.gameObject.SetActive(false);
            }
            activeEnv = Generator.EnvironmentID.Env1;
            return;
        }
    }
}
