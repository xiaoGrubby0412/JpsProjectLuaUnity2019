//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class DebugGridWrap
{
	public static void Register(LuaState L)
	{
		L.BeginClass(typeof(DebugGrid), typeof(UnityEngine.MonoBehaviour));
		L.RegFunction("updateListWidth", updateListWidth);
		L.RegFunction("updateListHeight", updateListHeight);
		L.RegFunction("SetItems", SetItems);
		L.RegFunction("__eq", op_Equality);
		L.RegFunction("__tostring", ToLua.op_ToString);
		L.RegVar("Instance", get_Instance, set_Instance);
		L.RegVar("width", get_width, set_width);
		L.RegVar("height", get_height, set_height);
		L.RegVar("curBrushType", get_curBrushType, set_curBrushType);
		L.RegVar("curBrushSetType", get_curBrushSetType, set_curBrushSetType);
		L.RegVar("ifStartSaveData", get_ifStartSaveData, set_ifStartSaveData);
		L.RegVar("curSelectAreaID", get_curSelectAreaID, set_curSelectAreaID);
		L.RegVar("blockData", get_blockData, set_blockData);
		L.RegVar("lstWidth", get_lstWidth, set_lstWidth);
		L.RegVar("lstHeight", get_lstHeight, set_lstHeight);
		L.RegVar("offsetY", get_offsetY, set_offsetY);
		L.RegVar("islandOffsetY", get_islandOffsetY, set_islandOffsetY);
		L.RegVar("brushSize", get_brushSize, set_brushSize);
		L.RegVar("focusTrm", get_focusTrm, set_focusTrm);
		L.RegVar("showIsland", get_showIsland, set_showIsland);
		L.RegVar("m_x", get_m_x, set_m_x);
		L.RegVar("m_z", get_m_z, set_m_z);
		L.RegVar("items", get_items, set_items);
		L.EndClass();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int updateListWidth(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 3);
			DebugGrid obj = (DebugGrid)ToLua.CheckObject<DebugGrid>(L, 1);
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 2);
			int arg1 = (int)LuaDLL.luaL_checknumber(L, 3);
			obj.updateListWidth(arg0, arg1);
			return 0;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int updateListHeight(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 3);
			DebugGrid obj = (DebugGrid)ToLua.CheckObject<DebugGrid>(L, 1);
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 2);
			int arg1 = (int)LuaDLL.luaL_checknumber(L, 3);
			obj.updateListHeight(arg0, arg1);
			return 0;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int SetItems(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			DebugGrid obj = (DebugGrid)ToLua.CheckObject<DebugGrid>(L, 1);
			int[] arg0 = ToLua.CheckNumberArray<int>(L, 2);
			obj.SetItems(arg0);
			return 0;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int op_Equality(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			UnityEngine.Object arg0 = (UnityEngine.Object)ToLua.ToObject(L, 1);
			UnityEngine.Object arg1 = (UnityEngine.Object)ToLua.ToObject(L, 2);
			bool o = arg0 == arg1;
			LuaDLL.lua_pushboolean(L, o);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Instance(IntPtr L)
	{
		try
		{
			ToLua.Push(L, DebugGrid.Instance);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_width(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			DebugGrid obj = (DebugGrid)o;
			int ret = obj.width;
			LuaDLL.lua_pushinteger(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index width on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_height(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			DebugGrid obj = (DebugGrid)o;
			int ret = obj.height;
			LuaDLL.lua_pushinteger(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index height on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_curBrushType(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			DebugGrid obj = (DebugGrid)o;
			BrushType ret = obj.curBrushType;
			ToLua.Push(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index curBrushType on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_curBrushSetType(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			DebugGrid obj = (DebugGrid)o;
			BrushSetType ret = obj.curBrushSetType;
			ToLua.Push(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index curBrushSetType on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_ifStartSaveData(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			DebugGrid obj = (DebugGrid)o;
			bool ret = obj.ifStartSaveData;
			LuaDLL.lua_pushboolean(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index ifStartSaveData on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_curSelectAreaID(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			DebugGrid obj = (DebugGrid)o;
			int ret = obj.curSelectAreaID;
			LuaDLL.lua_pushinteger(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index curSelectAreaID on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_blockData(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			DebugGrid obj = (DebugGrid)o;
			ACE.ANode[][] ret = obj.blockData;
			ToLua.Push(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index blockData on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_lstWidth(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			DebugGrid obj = (DebugGrid)o;
			System.Collections.Generic.List<UnityEngine.Vector2>[] ret = obj.lstWidth;
			ToLua.Push(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index lstWidth on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_lstHeight(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			DebugGrid obj = (DebugGrid)o;
			System.Collections.Generic.List<UnityEngine.Vector2>[] ret = obj.lstHeight;
			ToLua.Push(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index lstHeight on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_offsetY(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			DebugGrid obj = (DebugGrid)o;
			float ret = obj.offsetY;
			LuaDLL.lua_pushnumber(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index offsetY on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_islandOffsetY(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			DebugGrid obj = (DebugGrid)o;
			float ret = obj.islandOffsetY;
			LuaDLL.lua_pushnumber(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index islandOffsetY on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_brushSize(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			DebugGrid obj = (DebugGrid)o;
			int ret = obj.brushSize;
			LuaDLL.lua_pushinteger(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index brushSize on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_focusTrm(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			DebugGrid obj = (DebugGrid)o;
			UnityEngine.Transform ret = obj.focusTrm;
			ToLua.Push(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index focusTrm on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_showIsland(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			DebugGrid obj = (DebugGrid)o;
			bool ret = obj.showIsland;
			LuaDLL.lua_pushboolean(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index showIsland on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_m_x(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			DebugGrid obj = (DebugGrid)o;
			int ret = obj.m_x;
			LuaDLL.lua_pushinteger(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index m_x on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_m_z(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			DebugGrid obj = (DebugGrid)o;
			int ret = obj.m_z;
			LuaDLL.lua_pushinteger(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index m_z on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_items(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			DebugGrid obj = (DebugGrid)o;
			System.Collections.Generic.List<int> ret = obj.items;
			ToLua.PushSealed(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index items on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_Instance(IntPtr L)
	{
		try
		{
			DebugGrid arg0 = (DebugGrid)ToLua.CheckObject<DebugGrid>(L, 2);
			DebugGrid.Instance = arg0;
			return 0;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_width(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			DebugGrid obj = (DebugGrid)o;
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 2);
			obj.width = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index width on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_height(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			DebugGrid obj = (DebugGrid)o;
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 2);
			obj.height = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index height on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_curBrushType(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			DebugGrid obj = (DebugGrid)o;
			BrushType arg0 = (BrushType)ToLua.CheckObject(L, 2, typeof(BrushType));
			obj.curBrushType = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index curBrushType on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_curBrushSetType(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			DebugGrid obj = (DebugGrid)o;
			BrushSetType arg0 = (BrushSetType)ToLua.CheckObject(L, 2, typeof(BrushSetType));
			obj.curBrushSetType = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index curBrushSetType on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_ifStartSaveData(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			DebugGrid obj = (DebugGrid)o;
			bool arg0 = LuaDLL.luaL_checkboolean(L, 2);
			obj.ifStartSaveData = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index ifStartSaveData on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_curSelectAreaID(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			DebugGrid obj = (DebugGrid)o;
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 2);
			obj.curSelectAreaID = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index curSelectAreaID on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_blockData(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			DebugGrid obj = (DebugGrid)o;
			ACE.ANode[][] arg0 = ToLua.CheckObjectArray<ACE.ANode[]>(L, 2);
			obj.blockData = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index blockData on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_lstWidth(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			DebugGrid obj = (DebugGrid)o;
			System.Collections.Generic.List<UnityEngine.Vector2>[] arg0 = ToLua.CheckObjectArray<System.Collections.Generic.List<UnityEngine.Vector2>>(L, 2);
			obj.lstWidth = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index lstWidth on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_lstHeight(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			DebugGrid obj = (DebugGrid)o;
			System.Collections.Generic.List<UnityEngine.Vector2>[] arg0 = ToLua.CheckObjectArray<System.Collections.Generic.List<UnityEngine.Vector2>>(L, 2);
			obj.lstHeight = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index lstHeight on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_offsetY(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			DebugGrid obj = (DebugGrid)o;
			float arg0 = (float)LuaDLL.luaL_checknumber(L, 2);
			obj.offsetY = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index offsetY on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_islandOffsetY(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			DebugGrid obj = (DebugGrid)o;
			float arg0 = (float)LuaDLL.luaL_checknumber(L, 2);
			obj.islandOffsetY = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index islandOffsetY on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_brushSize(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			DebugGrid obj = (DebugGrid)o;
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 2);
			obj.brushSize = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index brushSize on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_focusTrm(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			DebugGrid obj = (DebugGrid)o;
			UnityEngine.Transform arg0 = (UnityEngine.Transform)ToLua.CheckObject<UnityEngine.Transform>(L, 2);
			obj.focusTrm = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index focusTrm on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_showIsland(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			DebugGrid obj = (DebugGrid)o;
			bool arg0 = LuaDLL.luaL_checkboolean(L, 2);
			obj.showIsland = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index showIsland on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_m_x(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			DebugGrid obj = (DebugGrid)o;
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 2);
			obj.m_x = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index m_x on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_m_z(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			DebugGrid obj = (DebugGrid)o;
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 2);
			obj.m_z = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index m_z on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_items(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			DebugGrid obj = (DebugGrid)o;
			System.Collections.Generic.List<int> arg0 = (System.Collections.Generic.List<int>)ToLua.CheckObject(L, 2, typeof(System.Collections.Generic.List<int>));
			obj.items = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index items on a nil value");
		}
	}
}

