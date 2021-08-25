/********************************************************************
	created:	2021-5-17   15:46
	file base:	Singleton
	author:		Bing Lau
	
	purpose:	非MonoBehaviour单例基类
*********************************************************************/

using System;

    public abstract class Singleton<T> where T : class, new()
    {
        private static T m_instance;
        public static T instance
        {
            get
            {
                if (m_instance == null)
                {
                    m_instance = Activator.CreateInstance<T>();
                    if (m_instance != null)
                    {
                        (m_instance as Singleton<T>).Init();
                    }
                }

                return m_instance;
            }
        }

        public static void Release()
        {
            if (m_instance != null)
            {
                m_instance = (T)((object)null);
            }
        }

        public virtual void Init()
        {

        }

        public abstract void Dispose();

    }

