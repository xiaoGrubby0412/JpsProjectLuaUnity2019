using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Launch : MonoBehaviour {
    public LuaManager luaManager;
	// Use this for initialization
	void Start () {

        luaManager.CallFunction("Main", null);
    }
	
	// Update is called once per frame
	void Update () {
		
	}
}
