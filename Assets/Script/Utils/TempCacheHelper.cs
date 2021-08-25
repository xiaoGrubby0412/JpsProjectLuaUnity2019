/********************************************************************
	created:	2021/6/18 14:22:38
	file base:	Assets/Scripts/Base/Utils/TempCacheHelper.cs
	author:		BINGLAU

	purpose:	
*********************************************************************/
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Text;
using UnityEngine;

   public class TempCacheHelper
   {
		private static string SavePath = Application.persistentDataPath;
		private static string Default_Account_Key = "Default_Account_Key";

        private static string m_CurAccount;

		public static string GetDefaultAccount()
        {
            m_CurAccount = PlayerPrefs.GetString(Default_Account_Key, "");
            return m_CurAccount;
        }

        public static void SetDefaultAccount(string account)
        {
			PlayerPrefs.SetString(Default_Account_Key, account);
            m_CurAccount = account;
        }

        public static string LoadCacheData()
        {
            string str = null;
            string path = Path.Combine(SavePath, m_CurAccount)/* + ".json"*/;
            if(!File.Exists(path))
            {
                return str;
            }
            using (FileStream fs = new FileStream(Path.Combine(SavePath, m_CurAccount)/* + ".json"*/, FileMode.Open, FileAccess.Read))
            {
                using(StreamReader sr = new StreamReader(fs))
                {
                    str = sr.ReadToEnd();
                }
            }
            return str;
        }

        public static void SaveCacheData(string data)
        {
            using (FileStream fs = new FileStream(Path.Combine(SavePath, m_CurAccount)/* + ".json"*/, FileMode.OpenOrCreate, FileAccess.Write))
            {
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    sw.Write(data);
                }
            }
        }
   }
