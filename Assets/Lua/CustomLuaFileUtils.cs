/********************************************************************
	created:	2021/5/17 17:46:47
	file base:	Assets/Scripts/Base/Lua/CustomLuaFileUtils.cs
	author:		Bing Lau

	purpose:	扩展的 LuaFileUtils
*********************************************************************/
using LuaInterface;
using System.Text;


   public class CustomLuaFileUtils : LuaFileUtils
   {

        private StringBuilder sb = new StringBuilder();
        public override byte[] ReadFile(string fileName)
        {
            //编辑器下直接读取Lua源文件
#if UNITY_EDITOR
            if(!fileName.EndsWith(".lua"))
            {
                fileName += ".lua";
            }
            return base.ReadFile(fileName);
#endif

            //读取Adressable中的Lua文件
            return null;
        }
    }
