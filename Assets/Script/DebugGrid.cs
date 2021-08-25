using UnityEngine;
using System.Collections.Generic;
using ACE;

/**
 * 显示地图网格用的,与TMap平级
 * 替代 TerrainManager,TerrainManager是单例，生命周期不易于管理，过于暴露，隐藏太深.
 * 注意这个依赖于CamFollow存在
 * 
 * 	//O---Z
	//|
	//|
	//X
 * 
 */

///<summary>
/// 显示地图网格用
/// 依赖于CamFollow
/// </summary>

public enum BrushType
{
    None,
    Rect,
    Circle,
}

public enum BrushSetType
{
    None,
    Block,
    Gate,
    Rubber,
    Area,
}

public class DebugGrid : MonoBehaviour
{
    public static DebugGrid Instance = null;

    public int width;                        //地图的宽度
    public int height;                   //地图的高度

    public BrushType curBrushType = BrushType.None;
    public BrushSetType curBrushSetType = BrushSetType.None;

    public bool ifStartSaveData = false;
    public int curSelectAreaID = 0;

    public ANode[][] blockData;

    public List<Vector2>[] lstWidth;
    public List<Vector2>[] lstHeight;

    /// <summary>
    /// offsetY,网格比地面要高出多少
    /// </summary>
    public float offsetY = 0.1f;

    //孤岛离地面高度
    public float islandOffsetY = 0.2f;

    /// <summary>
    /// 选中的格子的大小
    /// </summary>
    public int brushSize = 10;

    //定点高度图,记录下来，方便绘制格子
    float[,] heiArr2;

    //画线用的材质球
    Material lineMat;

    //基于的焦点
    public Transform focusTrm;

    public bool showIsland = false;

    public int m_x; //当前选中的格子横坐标
    public int m_z; //当前选中的格子纵坐标

    void Awake()
    {
        DebugGrid.Instance = this;
        if (lineMat == null)
        {
            lineMat = Resources.Load<Material>("LineMat");
        }
    }

    private void Start()
    {

    }

    private void OnDestroy()
    {
        DebugGrid.Instance = null;
    }


    //在相机场景渲染完后被调用.
    void OnRenderObject()
    {
        DrawBlock();

        if (curBrushType != BrushType.None)
        {
            DrawSelect();
        }

        DrawStartEnd();
        DrawOpenSet();
        DrawCloseSet();
    }

    //数组地面的数据标志
    void OnGUI()
    {
        //DrawGatePaths();
        DrawPath();
    }

    float GetHei(int c, int r)
    {
        return 1;
        //		if(r< 0 || c < 0  || c > CC-1 || r > RC-1)
        //			return 0 ;
        //		
        //		return heiArr2[r,c];
    }

    Color GetColorByAreaID(int id)
    {
        if (id == 0)
            return Color.black;
        else if (id == 1)
            return Color.gray;
        else if (id == 2)
            return Color.green;
        else if (id == 3)
            return new Color(46, 139, 87);
        else if (id == 4)
            return new Color(255, 165, 0);
        else if (id == 5)
            return new Color(255, 0, 255);
        else if (id == 6)
            return new Color(139, 101, 8);
        else
            return new Color(255, 236, 139);
    }



    void DrawStartEnd()
    {
        string[] ss = DemoControl.instance.spos.Split(',');
        Vector2 s = new Vector2(int.Parse(ss[0]), int.Parse(ss[1]));
        ss = DemoControl.instance.tpos.Split(',');
        Vector2 t = new Vector2(int.Parse(ss[0]), int.Parse(ss[1]));

        ANode startNode = new ANode((int)s.x, (int)s.y);
        ANode endNode = new ANode((int)t.x, (int)t.y);

        DrawANode(startNode, Color.green);
        DrawANode(endNode, Color.red);
    }

    void DrawOpenSet()
    {
        Dictionary<int, ANode> openDic = DemoControl.instance.jpsHelper.openDict;
        if (openDic.Count != DemoControl.instance.jpsHelper.sortedOpenQue.Count)
        {
            Debug.LogError("Error In DrawOpenSet Count Error !!!");
        }

        if (DemoControl.instance.jpsHelper.sortedOpenQue.Count == openDic.Count)
        {
            for (int k = 0; k < DemoControl.instance.jpsHelper.sortedOpenQue.Count; k++)
            {
                ANode nn = DemoControl.instance.jpsHelper.sortedOpenQue.heap[k];
                DrawANode(nn, Color.green);
                if (nn.Parent != null)
                {
                    DrawLine(nn.X + 0.5f, nn.Y + 0.5f, nn.Parent.X + 0.5f, nn.Parent.Y + 0.5f);
                }
            }
        }
    }

    void DrawCloseSet()
    {
        Dictionary<int, ANode> closeDic = DemoControl.instance.jpsHelper.closeDict;

        foreach (KeyValuePair<int, ANode> pair in closeDic)
        {
            ANode nn = pair.Value;
            DrawANode(nn, Color.red);
            if (nn.Parent != null)
            {
                DrawLine(nn.X + 0.5f, nn.Y + 0.5f, nn.Parent.X + 0.5f, nn.Parent.Y + 0.5f);
            }
        }

        //for (int k = 0; k < DemoControl.instance.jpsHelper.sortedOpenQue.Count; k++)
        //{
        //    ANode nn = DemoControl.instance.jpsHelper.sortedOpenQue.heap[k];
        //    DrawANode(nn, Color.red);
        //    if (nn.Parent != null)
        //    {
        //        DrawLine(nn.X + 0.5f, nn.Y + 0.5f, nn.Parent.X + 0.5f, nn.Parent.Y + 0.5f);
        //    }
        //}

    }

    void DrawLine(float startX, float startY, float endX, float endY)
    {
        GL.Begin(GL.LINES);
        GL.Color(Color.black);

        GL.Vertex3(startX, 1.1f, startY);
        GL.Vertex3(endX, 1.1f, endY);

        GL.End();
    }

    void DrawANode(ANode node, Color color)
    {
        GL.Begin(GL.LINES);
        GL.Color(color);

        int tempx = node.X;
        int tempz = node.Y;

        GL.Vertex3(tempx, offsetY + GetHei(tempx, tempz), tempz);
        GL.Vertex3((tempx + 1), offsetY + GetHei(tempx + 1, tempz), tempz);

        GL.Vertex3((tempx + 1), offsetY + GetHei(tempx + 1, tempz), tempz);
        GL.Vertex3((tempx + 1), offsetY + GetHei(tempx + 1, tempz + 1), (tempz + 1));

        GL.Vertex3((tempx + 1), offsetY + GetHei(tempx + 1, tempz + 1), (tempz + 1));
        GL.Vertex3((tempx), offsetY + GetHei(tempx, tempz + 1), (tempz + 1));

        GL.Vertex3((tempx), offsetY + GetHei(tempx, tempz + 1), (tempz + 1));
        GL.Vertex3(tempx, offsetY + GetHei(tempx, tempz), tempz);

        GL.End();
    }

    public void updateListWidth(int from, int to)
    {
        for (int y = from; y <= to; y++)
        {
            List<Vector2> list = new List<Vector2>();
            int lastX = -1;
            for (int x = 0; x < this.width; x++)
            {
                if (lastX == -1 && this.blockData[x][y].cost == 0)
                {
                    lastX = x;
                    list.Add(new Vector2(x, y));
                }

                if (lastX != -1 && ((this.blockData[x][y].cost != this.blockData[lastX][y].cost) || x == this.width - 1))
                {
                    list.Add(new Vector2(x - 1, y));
                    lastX = -1;
                }
            }
            list.Add(new Vector2(-1, -1)); //放入一行之内的 n 对 点
            this.lstWidth[y] = list;
        }
    }

    public void updateListHeight(int from, int to)
    {
        for (int x = from; x <= to; x++)
        {
            List<Vector2> list = new List<Vector2>();
            int lastY = -1;
            for (int y = 0; y < this.height; y++)
            {
                if (lastY == -1 && this.blockData[x][y].cost == 0)
                {
                    lastY = y;
                    list.Add(new Vector2(x, y));
                }

                if (lastY != -1 && ((this.blockData[x][y].cost != this.blockData[x][lastY].cost) || y == this.height - 1))
                {
                    list.Add(new Vector2(x, y - 1));
                    lastY = -1;
                }
            }
            list.Add(new Vector2(-1, -1));
            this.lstHeight[x] = list;
        }
    }
    /**
     * 渲染网格
     */
    void DrawBlock()
    {
        lineMat.SetPass(0);
        GL.Begin(GL.LINES);
        GL.Color(new Color(1, 0, 0, 1));

        //List<Vector2> list = new List<Vector2>();

        //for (int y = 0; y < this.height; y++)
        //{
        //    int lastX = -1;
        //    for (int x = 0; x < this.width; x++)
        //    {
        //        if (lastX == -1 && this.blockData[x][y] == 1)
        //        {
        //            lastX = x;
        //            list.Add(new Vector2(x, y));
        //        }

        //        if (lastX != -1 && ((this.blockData[x][y] != this.blockData[lastX][y]) || x == this.width - 1))
        //        {
        //            list.Add(new Vector2(x - 1, y));
        //            lastX = -1;
        //        }
        //    }
        //    list.Add(new Vector2(-1, -1)); //放入一行之内的 n 对 点
        //}

        //for (int x = 0; x < this.width; x++)
        //{
        //    int lastY = -1;
        //    for (int y = 0; y < this.height; y++)
        //    {
        //        if (lastY == -1 && this.blockData[x][y] == 1)
        //        {
        //            lastY = y;
        //            list.Add(new Vector2(x, y));
        //        }

        //        if (lastY != -1 && ((this.blockData[x][y] != this.blockData[x][lastY]) || y == this.height - 1))
        //        {
        //            list.Add(new Vector2(x, y - 1));
        //            lastY = -1;
        //        }
        //    }
        //    list.Add(new Vector2(-1, -1));
        //}

        for (int i = 0; i < lstWidth.Length; i++)
        {
            List<Vector2> list = lstWidth[i];
            int idx = 0;

            while (idx < list.Count)
            {
                if (list[idx].x == -1 && list[idx].y == -1) { idx++; continue; }
                GL.Color(GetCellColor((int)list[idx].x, (int)list[idx].y));
                GL.Vertex3(list[idx].x, offsetY + 1, list[idx].y);
                GL.Vertex3(list[idx + 1].x, offsetY + 1, list[idx + 1].y);
                idx += 2;
            }
        }

        for (int i = 0; i < lstHeight.Length; i++)
        {
            List<Vector2> list = lstHeight[i];
            int idx = 0;

            while (idx < list.Count)
            {
                if (list[idx].x == -1 && list[idx].y == -1) { idx++; continue; }
                GL.Color(GetCellColor((int)list[idx].x, (int)list[idx].y));
                GL.Vertex3(list[idx].x, offsetY + 1, list[idx].y);
                GL.Vertex3(list[idx + 1].x, offsetY + 1, list[idx + 1].y);
                idx += 2;
            }
        }

        GL.End();
    }

    //x,z是格子中心
    void DrawQuad(int centerX, int centerZ, int size, Color color, float offsetY = 0)
    {

        GL.Color(color);
        GL.Begin(GL.LINES);
        float halfSize = size / 2;

        float x = centerX - halfSize;
        float z = centerZ - halfSize;
        GL.Vertex3(x, GetHei((int)x, (int)z), z);

        x = centerX + halfSize;
        z = centerZ - halfSize;
        GL.Vertex3(x, GetHei((int)x, (int)z), z);

        x = centerX + halfSize;
        z = centerZ + halfSize;
        GL.Vertex3(x, GetHei((int)x, (int)z), z);

        x = centerX - halfSize;
        z = centerZ + halfSize;
        GL.Vertex3(x, GetHei((int)x, (int)z), z);
        GL.End();
    }

    /**
    *	渲染当前选中状态
    */
    void DrawSelect()
    {
        Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
        RaycastHit hit;
        if (Physics.Raycast(ray, out hit))
        {
            Vector3 hitPos = hit.point;

            m_x = (int)hitPos.x;
            m_z = (int)hitPos.z;

            lineMat.SetPass(0);
            GL.Begin(GL.LINES);
            GL.Color(new Color(0, 1, 0, 0.9f));

            for (int i = -brushSize; i <= brushSize; i++)
            {
                for (int j = -brushSize; j <= brushSize; j++)
                {
                    int tempx = m_x + i;
                    int tempz = m_z + j;

                    if (curBrushType == BrushType.Rect)
                    {
                        if (Mathf.Abs(i) * 2 < brushSize && Mathf.Abs(j) * 2 < brushSize)
                        {
                            DrawData(tempx, tempz);
                        }
                    }
                    else if (curBrushType == BrushType.Circle)
                    {
                        float radius = Mathf.Sqrt(i * i + j * j);
                        if (radius * 2 < brushSize)
                        {
                            DrawData(tempx, tempz);
                        }
                    }
                }
            }

            GL.End();
        }
    }

    void DrawData(int tempx, int tempz)
    {
        //Vector2 p1 = new Vector2(tempx, tempz);
        //Vector2 p2 = new Vector2(tempx + 1, tempz);
        //Vector2 p3 = new Vector2(tempx + 1, tempz + 1);
        //Vector2 p4 = new Vector2(tempx, tempz + 1)

        //if (tempx >= 0 && tempx + 1 < width && tempz >= 0)
        //{
        //    GL.Vertex3(tempx, offsetY + GetHei(tempx, tempz), tempz);
        //    GL.Vertex3((tempx + 1), offsetY + GetHei(tempx + 1, tempz), tempz);
        //}

        //if (tempx + 1 >= 0 && tempz + 1 < height && tempz >= 0)
        //{
        //    GL.Vertex3((tempx + 1), offsetY + GetHei(tempx + 1, tempz), tempz);
        //    GL.Vertex3((tempx + 1), offsetY + GetHei(tempx + 1, tempz + 1), (tempz + 1));
        //}


        //if (tempx >= 0 && tempx + 1 < width && tempz + 1 < height) 
        //{
        //    GL.Vertex3((tempx + 1), offsetY + GetHei(tempx + 1, tempz + 1), (tempz + 1));
        //    GL.Vertex3((tempx), offsetY + GetHei(tempx, tempz + 1), (tempz + 1));
        //}

        //if (tempx >= 0 && tempz >= 0 && tempz + 1 < height) 
        //{
        //    GL.Vertex3((tempx), offsetY + GetHei(tempx, tempz + 1), (tempz + 1));
        //    GL.Vertex3(tempx, offsetY + GetHei(tempx, tempz), tempz);
        //}

        if (tempx >= 0 && tempx + 1 < width && tempz >= 0 && tempz + 1 < height)
        {
            GL.Vertex3(tempx, offsetY + GetHei(tempx, tempz), tempz);
            GL.Vertex3((tempx + 1), offsetY + GetHei(tempx + 1, tempz), tempz);

            GL.Vertex3((tempx + 1), offsetY + GetHei(tempx + 1, tempz), tempz);
            GL.Vertex3((tempx + 1), offsetY + GetHei(tempx + 1, tempz + 1), (tempz + 1));

            GL.Vertex3((tempx + 1), offsetY + GetHei(tempx + 1, tempz + 1), (tempz + 1));
            GL.Vertex3((tempx), offsetY + GetHei(tempx, tempz + 1), (tempz + 1));

            GL.Vertex3((tempx), offsetY + GetHei(tempx, tempz + 1), (tempz + 1));
            GL.Vertex3(tempx, offsetY + GetHei(tempx, tempz), tempz);

            if (ifStartSaveData)
            {
                if (curBrushSetType == BrushSetType.None) return;
                else if (curBrushSetType == BrushSetType.Block)
                {
                    ACE.Grid.Instance.SetBlock(tempx, tempz);
                    ACE.Grid.Instance.SetBlock(tempx + 1, tempz);
                    ACE.Grid.Instance.SetBlock(tempx + 1, tempz + 1);
                    ACE.Grid.Instance.SetBlock(tempx, tempz + 1);
                    updateListHeight(tempx, tempx + 1);
                    updateListWidth(tempz, tempz + 1);
                }
                else if (curBrushSetType == BrushSetType.Gate)
                {
                    //AMapData.Instance.SetGate(tempx, tempz);
                }
                else if (curBrushSetType == BrushSetType.Rubber)
                {
                    ACE.Grid.Instance.SetNormal(tempx, tempz);
                    ACE.Grid.Instance.SetNormal(tempx + 1, tempz);
                    ACE.Grid.Instance.SetNormal(tempx + 1, tempz + 1);
                    ACE.Grid.Instance.SetNormal(tempx, tempz + 1);
                    updateListHeight(tempx, tempx + 1);
                    updateListWidth(tempz, tempz + 1);
                }
                else if (curBrushSetType == BrushSetType.Area)
                {
                    //AMapData.Instance.SetAreaData(curSelectAreaID, tempx, tempz);
                    //AMapData.Instance.SetAreaData(curSelectAreaID, tempx + 1, tempz);
                    //AMapData.Instance.SetAreaData(curSelectAreaID, tempx + 1, tempz + 1);
                    //AMapData.Instance.SetAreaData(curSelectAreaID, tempx, tempz + 1);
                }
            }
        }


    }

    //提取某个网格的颜色
    Color GetCellColor(int i, int j)
    {
        ANode node = ACE.Grid.Instance.spots[i][j];
        switch (node.cost)
        {
            case 0: return Color.red;
            default: return Color.white;
        }
    }

    //提取某个网格的颜色
    Color GetIslandColor(int v)
    {
        switch (v)
        {
            case 2: return Color.yellow;
            case 4: return new Color(0.5f, 0.5f, 1.0f);//紫色.
            case 6: return new Color(0.9f, 0.1f, 0.8f);//粉色.
            case 8: return Color.black;
            case 10: return new Color(0.9f, 0.4f, 0.1f);//橙色.
        }

        return new Color(0, 1, 1);
    }

    public List<int> items = null;


    public void SetItems(int[] items)
    {
        this.items = new List<int>(items);
    }

    void DrawPath()
    {
        if (items == null)
            return;

        lineMat.SetPass(0);
        GL.Begin(GL.LINES);
        GL.Color(Color.blue);

        int len = items.Count;

        for (int i = 3; i < len; i += 3)
        {
            Vector3 p0;
            p0.x = items[i - 3] / 10;
            p0.z = items[i - 1] / 10;
            p0.y = 1;

            GL.Vertex(p0);

            Vector3 p;
            p.x = items[i] / 10;
            p.z = items[i + 2] / 10;
            p.y = 1;

            GL.Vertex(p);
        }
        GL.End();
    }
}