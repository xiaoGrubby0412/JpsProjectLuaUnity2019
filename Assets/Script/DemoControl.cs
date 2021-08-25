using UnityEngine;
using System.IO;
using System.Collections.Generic;
using System;
using ACE;
using System.Runtime.Serialization.Json;

public class DemoControl : MonoBehaviour
{
    private BrushType lastBrushSetType;

    public Terrain terrain;
    public int G = 100;
    public int NUM_PER_SESS = 20;
    public bool ifInverse = false;
    public DebugGrid debugGrid;
    bool smooth = false;
    public static DemoControl instance;

    public JpsHelperManager jpsHelper;

    public const int mapWidth = 1400;
    public const int mapHeight = 1400;


    // Use this for initialization
    public void Awake()
    {
        instance = this;
    }

    public void OnDestroy()
    {
        instance = null;
    }

    void Start()
    {
        ACE.Grid.Instance = new ACE.Grid();
        jpsHelper = new JpsHelperManager(ACE.Grid.Instance);
        ACE.Grid.Instance.SetGridSize(DemoControl.mapWidth, DemoControl.mapHeight);
        DebugGrid.Instance.width = DemoControl.mapWidth;
        DebugGrid.Instance.height = DemoControl.mapHeight;
        DebugGrid.Instance.blockData = ACE.Grid.Instance.spots;
        DebugGrid.Instance.lstWidth = new List<Vector2>[DemoControl.mapWidth];
        DebugGrid.Instance.lstHeight = new List<Vector2>[DemoControl.mapHeight];
        DebugGrid.Instance.updateListHeight(0, DemoControl.mapWidth - 1);
        DebugGrid.Instance.updateListWidth(0, DemoControl.mapHeight - 1);

        if (terrain.terrainData)
        {
            terrain.terrainData.size = new Vector3(ACE.Grid.Instance.cols, terrain.terrainData.size.y, ACE.Grid.Instance.rows);
        }
        debugGrid.curBrushType = BrushType.None;
    }


    void OnValidate()
    {

    }

    void Update()
    {
        if (Input.GetMouseButton(0))
        {
            if (setSpos || setTpos)
            {
                Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
                RaycastHit hit;
                if (Physics.Raycast(ray, out hit))
                {
                    Vector3 hitPos = hit.point;

                    int x = (int)hitPos.x;
                    int z = (int)hitPos.z;

                    if (setSpos) { spos = x.ToString() + "," + z.ToString(); }
                    if (setTpos) { tpos = x.ToString() + "," + z.ToString(); }
                }
            }
        }

        if (Input.GetMouseButtonDown(0))
        {
            debugGrid.ifStartSaveData = true;
        }

        if (Input.GetMouseButtonUp(0))
        {
            debugGrid.ifStartSaveData = false;
        }
    }

    public string spos = "1,1";
    public string tpos = "1399,1399";
    bool setSpos;
    bool setTpos;

    float curTime;
    float findPathTime;
    float smoothTime;
    float findPathTimeC;
    float smoothTimeC;
    private void InverseVector2(ref Vector2 start, ref Vector2 end)
    {
        Vector2 temp = new Vector2();
        temp.x = start.x;
        temp.y = start.y;

        start.x = end.x;
        start.y = end.y;

        end.x = temp.x;
        end.y = temp.y;
    }

    void StartFindPath(int type)
    {
        setSpos = false;
        setTpos = false;

        string[] ss = spos.Split(',');
        Vector2 s = new Vector2(int.Parse(ss[0]), int.Parse(ss[1]));
        ss = tpos.Split(',');
        Vector2 t = new Vector2(int.Parse(ss[0]), int.Parse(ss[1]));


        if (ifInverse)
        {
            InverseVector2(ref s, ref t);
        }

        if (type == 0)
        {

            jpsHelper.InitJps((int)s.x, (int)s.y, (int)t.x, (int)t.y, int.MaxValue, true);
            bool finded = jpsHelper.FindPath();
            if (finded == false) return;

            debugGrid.items = jpsHelper.pathList;

        }
        
    }

    void OnGUI()
    {
        GUILayout.BeginHorizontal();
        spos = GUILayout.TextField(spos);
        if (GUILayout.Button("设置起点"))
        {
            setSpos = true;
            setTpos = false;
            debugGrid.curBrushType = BrushType.None;
            lastBrushSetType = debugGrid.curBrushType;
        }
        GUILayout.EndHorizontal();

        GUILayout.BeginHorizontal();
        tpos = GUILayout.TextField(tpos);
        if (GUILayout.Button("设置终点"))
        {
            setSpos = false;
            setTpos = true;
            debugGrid.curBrushType = BrushType.None;
            lastBrushSetType = debugGrid.curBrushType;
        }
        GUILayout.EndHorizontal();

        GUILayout.BeginHorizontal();
        if (GUILayout.Button("寻路 Lua"))
        {
            StartFindPath(1);
        }
        GUILayout.EndHorizontal();

        GUILayout.BeginHorizontal();
        if (GUILayout.Button("寻路 C#"))
        {
            StartFindPath(0);
        }
        GUILayout.EndHorizontal();

        GUILayout.BeginHorizontal();
        string txt = "启用平滑";
        if (!smooth)
        {
            txt = "未启用平滑";
        }
        GUILayout.Label(txt);
        if (GUILayout.Button("平滑"))
        {
            smooth = !smooth;
        }
        GUILayout.EndHorizontal();

        GUILayout.BeginHorizontal();
        if (GUILayout.Button("取消刷子"))
        {
            debugGrid.curBrushType = BrushType.None;
            lastBrushSetType = debugGrid.curBrushType;
        }
        GUILayout.EndHorizontal();

        GUILayout.BeginHorizontal();
        if (GUILayout.Button("阻挡"))
        {
            debugGrid.curBrushSetType = BrushSetType.Block;
            debugGrid.curBrushType = lastBrushSetType == BrushType.None ? BrushType.Rect : BrushType.Circle;
        }
        GUILayout.EndHorizontal();

        GUILayout.BeginHorizontal();
        if (GUILayout.Button("设置门"))
        {
            debugGrid.curBrushSetType = BrushSetType.Gate;
            debugGrid.brushSize = 1;
            debugGrid.curBrushType = lastBrushSetType == BrushType.None ? BrushType.Rect : BrushType.Circle;
        }
        GUILayout.EndHorizontal();

        GUILayout.BeginHorizontal();
        if (GUILayout.Button("橡皮擦"))
        {
            debugGrid.curBrushSetType = BrushSetType.Rubber;
            debugGrid.curBrushType = lastBrushSetType == BrushType.None ? BrushType.Rect : BrushType.Circle;
        }
        GUILayout.EndHorizontal();

        GUILayout.BeginHorizontal();
        if (GUILayout.Button("矩形刷"))
        {
            debugGrid.curBrushType = BrushType.Rect;
        }
        GUILayout.EndHorizontal();

        GUILayout.BeginHorizontal();
        if (GUILayout.Button("圆形刷"))
        {
            debugGrid.curBrushType = BrushType.Circle;
        }
        GUILayout.EndHorizontal();

        GUILayout.BeginHorizontal();
        if (GUILayout.Button("刷子 - 大"))
        {
            debugGrid.brushSize = 200;
        }
        GUILayout.EndHorizontal();

        GUILayout.BeginHorizontal();
        if (GUILayout.Button("刷子 - 中"))
        {
            debugGrid.brushSize = 100;
        }
        GUILayout.EndHorizontal();

        GUILayout.BeginHorizontal();
        if (GUILayout.Button("刷子 - 小"))
        {
            debugGrid.brushSize = 50;
        }
        GUILayout.EndHorizontal();

        GUILayout.BeginHorizontal();
        if (GUILayout.Button("刷子 - 最小"))
        {
            debugGrid.brushSize = 1;
        }
        GUILayout.EndHorizontal();

        GUILayout.BeginHorizontal();
        if (GUILayout.Button("刷子 +++"))
        {
            debugGrid.brushSize = debugGrid.brushSize + 1;
        }
        GUILayout.EndHorizontal();

        GUILayout.BeginHorizontal();
        if (GUILayout.Button("刷子 ---"))
        {
            debugGrid.brushSize = debugGrid.brushSize - 1;
        }
        GUILayout.EndHorizontal();

        GUILayout.BeginHorizontal();
        if (GUILayout.Button("保存数据"))
        {
            //SaveDataToFile();
        }
        GUILayout.EndHorizontal();

        //GUILayout.BeginHorizontal();
        //if (GUILayout.Button("设置区域 1"))
        //{
        //    debugGrid.curSelectAreaID = 0;
        //    debugGrid.curBrushSetType = BrushSetType.Area;
        //    debugGrid.curBrushType = lastBrushSetType == BrushType.None ? BrushType.Rect : BrushType.Circle;
        //}
        //GUILayout.EndHorizontal();

        //GUILayout.BeginHorizontal();
        //if (GUILayout.Button("设置区域 2"))
        //{
        //    debugGrid.curSelectAreaID = 1;
        //    debugGrid.curBrushSetType = BrushSetType.Area;
        //    debugGrid.curBrushType = lastBrushSetType == BrushType.None ? BrushType.Rect : BrushType.Circle;
        //}
        //GUILayout.EndHorizontal();

        //GUILayout.BeginHorizontal();
        //if (GUILayout.Button("设置区域 3"))
        //{
        //    debugGrid.curSelectAreaID = 2;
        //    debugGrid.curBrushSetType = BrushSetType.Area;
        //    debugGrid.curBrushType = lastBrushSetType == BrushType.None ? BrushType.Rect : BrushType.Circle;
        //}
        //GUILayout.EndHorizontal();

        //GUILayout.BeginHorizontal();
        //if (GUILayout.Button("设置区域 4"))
        //{
        //    debugGrid.curSelectAreaID = 3;
        //    debugGrid.curBrushSetType = BrushSetType.Area;
        //    debugGrid.curBrushType = lastBrushSetType == BrushType.None ? BrushType.Rect : BrushType.Circle;
        //}
        //GUILayout.EndHorizontal();

        //GUILayout.BeginHorizontal();
        //if (GUILayout.Button("设置区域 5"))
        //{
        //    debugGrid.curSelectAreaID = 4;
        //    debugGrid.curBrushSetType = BrushSetType.Area;
        //    debugGrid.curBrushType = lastBrushSetType == BrushType.None ? BrushType.Rect : BrushType.Circle;
        //}
        //GUILayout.EndHorizontal();

        //GUILayout.BeginHorizontal();
        //if (GUILayout.Button("设置区域 6"))
        //{
        //    debugGrid.curSelectAreaID = 5;
        //    debugGrid.curBrushSetType = BrushSetType.Area;
        //    debugGrid.curBrushType = lastBrushSetType == BrushType.None ? BrushType.Rect : BrushType.Circle;
        //}
        //GUILayout.EndHorizontal();

        //GUILayout.BeginHorizontal();
        //if (GUILayout.Button("设置区域 7"))
        //{
        //    debugGrid.curSelectAreaID = 6;
        //    debugGrid.curBrushSetType = BrushSetType.Area;
        //    debugGrid.curBrushType = lastBrushSetType == BrushType.None ? BrushType.Rect : BrushType.Circle;
        //}
        //GUILayout.EndHorizontal();

        GUILayout.BeginHorizontal();
        if (GUILayout.Button("initJps"))
        {
            string[] ss = spos.Split(',');
            Vector2 s = new Vector2(int.Parse(ss[0]), int.Parse(ss[1]));
            ss = tpos.Split(',');
            Vector2 t = new Vector2(int.Parse(ss[0]), int.Parse(ss[1]));
            jpsHelper.InitJps((int)s.x, (int)s.y, (int)t.x, (int)t.y, 65536, true);
        }
        GUILayout.EndHorizontal();


        GUILayout.BeginHorizontal();
        if (GUILayout.Button("search"))
        {
            if (jpsHelper.finalNode != null)
            {
                return;
            }
    
            jpsHelper.Search();
            
           
        }
        GUILayout.EndHorizontal();

        //GUILayout.BeginHorizontal();
        //GUILayout.Label("总的时间 Lua:" + (smoothTime + findPathTime));
        //GUILayout.EndHorizontal();
        //GUILayout.BeginHorizontal();
        //GUILayout.Label("寻路时间 Lua:" + findPathTime);
        //GUILayout.EndHorizontal();
        //GUILayout.BeginHorizontal();
        //GUILayout.Label("平滑时间 Lua:" + smoothTime);
        //GUILayout.EndHorizontal();

        //GUILayout.BeginHorizontal();
        //GUILayout.Label("总的时间 C#:" + (smoothTimeC + findPathTimeC));
        //GUILayout.EndHorizontal();
        //GUILayout.BeginHorizontal();
        //GUILayout.Label("寻路时间 C#" + findPathTimeC);
        //GUILayout.EndHorizontal();
        //GUILayout.BeginHorizontal();
        //GUILayout.Label("平滑时间 C#" + smoothTimeC);
        //GUILayout.EndHorizontal();
    } 

}