/********************************************************************
	created:	2021-5-17   16:30
	file base:	LuaManager
	author:		Bing Lau
	
	purpose:	Lua管理类
*********************************************************************/


using LuaInterface;


    public class LuaManager : MonoSingleton<LuaManager>
    {
        private static bool m_Inited;
        protected override void Init()
        {
            gameObject.AddComponent<CustomLuaClient>();
            m_Inited = true;
        }

        public LuaFunction GetLuaFunction(string funcName, bool logmiss = true)
        {
            return CustomLuaClient.GetMainState().GetFunction(funcName, logmiss);
        }

        public void CallFunction(string funcName, object args, bool logmiss = true)
        {
            LuaFunction func = CustomLuaClient.GetMainState().GetFunction(funcName, logmiss);
            if(func != null)
            {
                func.BeginPCall();
                func.Push(args);
                func.PCall();
                func.EndPCall();
                func.Dispose();
            }
        }

        private void OnApplicationFocus(bool focus)
        {
            if(m_Inited)
            {
                CallFunction("OnApplicationFocus", focus, false);
            }
        }

        private void OnApplicationPause(bool pause)
        {
            if (m_Inited)
            {
                CallFunction("OnApplicationPause", pause, false);
            }
        }

        private void OnApplicationQuit()
        {
            if (m_Inited)
            {
                CallFunction("OnApplicationQuit", false);
            }
        }
    }

