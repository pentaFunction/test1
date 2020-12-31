using LuaInterface;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LuaManager : MonoBehaviour {

    private LuaState lua;
    private LuaFileUtils loader;
    // Use this for initialization
    void Start () {
        loader = LuaFileUtils.Instance;
        loader.Dispose();

        lua = new LuaState();
        lua.LuaSetTop(0);
        LuaBinder.Bind(lua);
        lua.AddSearchPath(Application.dataPath + "/Lua");
        lua.Start();    //启动LUAVM虚拟机
        lua.DoFile("Main.lua");
        LuaFunction main = lua.GetFunction("Main");
        main.Call();
        main.Dispose();
        main = null;

        lua.DoFile("Game");
    }
}


