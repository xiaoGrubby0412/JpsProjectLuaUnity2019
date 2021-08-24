/********************************************************************
	created:	2021-5-17   15:53
	file base:	MonoSingleton
	author:		Bing Lau
	
	purpose:	MonoBehaviour 单例基类
*********************************************************************/


using UnityEngine;

    public class MonoSingleton<T> : MonoBehaviour where T : MonoSingleton<T>
    {
        private static T m_Instance;

        public static T Instance
        {
            get
            {
                if (m_Instance == null)
                {
                    m_Instance = GameObject.FindObjectOfType(typeof(T)) as T;
                    if (m_Instance == null)
                    {
                        GameObject go = new GameObject(typeof(T).Name);
                        m_Instance = go.AddComponent<T>();
                        GameObject parent = GameObject.Find("_Instance_");
                        if(parent == null)
                        {
                            parent = new GameObject("_Instance_");
                            DontDestroyOnLoad(parent);
                        }
                        if (parent)
                        {
                            go.transform.SetParent(parent.transform);
                        }
                    }
                }
                return m_Instance;
            }
        }

        private void Awake()
        {
            if (m_Instance == null)
            {
                m_Instance = this as T;
            }
            DontDestroyOnLoad(gameObject);
            Init();
        }

        protected virtual void OnDestroy()
        {
            Dispose();
            MonoSingleton<T>.m_Instance = null;
            UnityEngine.Object.Destroy(gameObject);
        }

        protected virtual void Init()
        {

        }

        protected virtual void Dispose()
        {

        }
    }

