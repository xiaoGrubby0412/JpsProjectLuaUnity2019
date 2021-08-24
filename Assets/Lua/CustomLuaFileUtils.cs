/********************************************************************
	created:	2021/5/17 17:46:47
	file base:	Assets/Scripts/Base/Lua/CustomLuaFileUtils.cs
	author:		Bing Lau

	purpose:	��չ�� LuaFileUtils
*********************************************************************/
using LuaInterface;
using System.Text;


   public class CustomLuaFileUtils : LuaFileUtils
   {

        private StringBuilder sb = new StringBuilder();
        public override byte[] ReadFile(string fileName)
        {
            //�༭����ֱ�Ӷ�ȡLuaԴ�ļ�
#if UNITY_EDITOR
            if(!fileName.EndsWith(".lua"))
            {
                fileName += ".lua";
            }
            return base.ReadFile(fileName);
#endif

            //��ȡAdressable�е�Lua�ļ�
            return null;
        }
    }
