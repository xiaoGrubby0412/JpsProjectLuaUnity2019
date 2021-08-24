/********************************************************************
	created:	2021/5/17 17:43:54
	file base:	Assets/Scripts/Base/Lua/CustomLuaClient.cs
	author:		Bing Lau

	purpose:	扩展的 LuaClient
*********************************************************************/
using LuaInterface;
using System;


   public class CustomLuaClient : LuaClient
   {
        protected override void OpenLibs()
        {
            //luaState.OpenLibs(LuaDLL.luaopen_pb_io);
            //luaState.OpenLibs(LuaDLL.luaopen_pb_conv);
            //luaState.OpenLibs(LuaDLL.luaopen_pb_buffer);
            //luaState.OpenLibs(LuaDLL.luaopen_pb_slice);
            luaState.OpenLibs(LuaDLL.luaopen_pb);
            luaState.OpenLibs(LuaDLL.luaopen_struct);
            luaState.OpenLibs(LuaDLL.luaopen_lpeg);

            OpenCJson();

#if UNITY_STANDALONE_OSX || UNITY_editor_osx
            luaState.OpenLibs(LuaDLL.luaopen_bit);
#endif
            if (LuaConst.openLuaSocket)
            {
                OpenLuaSocket();
            }

            InitExtendLuaFunc();
        }

        //初始化自定义的Lua扩展
        private void InitExtendLuaFunc()
        {
            //重新定义 print 函数
            luaState.LuaPushFunction(Print);
            luaState.LuaSetGlobal("print");
        }

        protected override void StartMain()
        {
#if UNITY_EDITOR
            luaState.DoString("require 'Gen.emmylua.emmylua'");
#endif
            luaState.DoFile("Main.lua");
        }

        protected override LuaFileUtils InitLoader()
        {
            return new CustomLuaFileUtils();
        }

        [MonoPInvokeCallbackAttribute(typeof(LuaFunction))]
        private static int Print(IntPtr L)
        {
            try
            {
                int n = LuaDLL.lua_gettop(L);
                using (CString.Block())
                {
                    CString sb = CString.Alloc(256);
                    for (int i = 1; i <= n; i++)
                    {
                        if (i > 1) sb.Append("    ");
                        if (LuaDLL.lua_isstring(L, i) == 1)
                        {
                            sb.Append(LuaDLL.lua_tostring(L, i));
                        }
                        else if (LuaDLL.lua_isnil(L, i))
                        {
                            sb.Append("nil");
                        }
                        else if (LuaDLL.lua_isboolean(L, i))
                        {
                            sb.Append(LuaDLL.lua_toboolean(L, i) ? "true" : "false");
                        }
                        else
                        {
                            IntPtr p = LuaDLL.lua_topointer(L, i);
                            if (p == IntPtr.Zero)
                            {
                                sb.Append("nil");
                            }
                            else
                            {
                                sb.Append(LuaDLL.luaL_typename(L, i)).Append(":0x").Append(p.ToString("X"));
                            }
                        }
                    }

#if UNITY_EDITOR
                    sb.Append("\n");
                    int line = LuaDLL.tolua_where(L, 1);
                    string filename = LuaDLL.lua_tostring(L, -1);
                    if (!filename.Contains("."))
                    {
                        sb.Append('[').Append(filename).Append(".lua:").Append(line).Append("]:");
                    }
                    else
                    {
                        sb.Append('[').Append(filename).Append(':').Append(line).Append("]:");
                    }
                    sb.Append("\n");
                    line = LuaDLL.tolua_where(L, 2);
                    filename = LuaDLL.lua_tostring(L, -1);
                    if (!filename.Contains("."))
                    {
                        sb.Append('[').Append(filename).Append(".lua:").Append(line).Append("]:");
                    }
                    else
                    {
                        sb.Append('[').Append(filename).Append(':').Append(line).Append("]:");
                    }
                    LuaDLL.lua_settop(L, n);
#endif
                    Debugger.Log(sb.ToString()); 
                }
                return 0;
            }
            catch (System.Exception ex)
            {
                return LuaDLL.toluaL_exception(L, ex);
            }
        }

    }
