/********************************************************************
	created:	2021/7/24 18:53:22
	file base:	Assets/Scripts/Base/Astar/AStarHelper.cs
	author:		DESKTOP-EQS54EE

	purpose:	
*********************************************************************/
using System.Collections.Generic;
using System;

#if UNITY_EDITOR || UNITY_STANDALONE || UNITY_ANDROID || UNITY_IOS
using UnityEngine;
#endif

namespace ACE
{
    public class JpsHelperManager
    {
        readonly int[,] DIR = {
            { 0, -1 },
            { 1, -1 },
            { 1, 0 },
            { 1, 1 },
            { 0, 1 },
            { -1, 1 },
            { -1, 0 },
            { -1, -1 }
        };

        public int currentStep;
        public int maxStep;
        public int startX;
        public int startY;
        public int endX;
        public int endY;
        public ANode finalNode;
        public List<int> pathList;
        public List<Vector2> pathListV2;
        public Dictionary<int, ANode> closeDict;
        public Dictionary<int, ANode> openDict;
        public PriorityQueue<ANode> sortedOpenQue;
        public List<ANode> neighbors;
        private Grid grid;
        private bool ifNum = false;

        public JpsHelperManager(Grid grid)
        {
            this.grid = grid;
            this.sortedOpenQue = new PriorityQueue<ANode>(65535, new ANodeCom());
            this.openDict = new Dictionary<int, ANode>();
            this.closeDict = new Dictionary<int, ANode>();
            this.neighbors = new List<ANode>();
        }

        public void SetMapData(Grid grid)
        {
            this.grid = grid;
        }

        public bool InitJps(int startX, int startY, int endX, int endY, int p_maxStep, bool ifNum)
        {
            if (this.grid.spots[startX][startY].cost == 0)
            {
                Debug.LogError("startX startY is Block !!! startX == " + startX + " startY == " + startY);
                return false;
            }

            if (this.grid.spots[endX][endY].cost == 0)
            {
                Debug.LogError("endX endY is Block !!! endX == " + endX + " endY == " + endY);
                return false;
            }

            if (p_maxStep < 1)
            {
                p_maxStep = this.grid.rows * this.grid.cols;
            }

            return Init(startX, startY, endX, endY, p_maxStep, ifNum);
        }

        public bool FindPath()
        {
            while (finalNode == null && currentStep <= maxStep)
            {
                Search();
            }

            if (this.finalNode == null)
            {
                Debug.LogError("no path found return null curStep == " + this.currentStep);
                return false;
            }
            else
            {
                Debug.Log("curStep == " + this.currentStep);

                NodeToList();

                if (this.ifNum == false)
                {
                    pathListV2 = new List<Vector2>();
                    for (int i = 0; i <= this.pathList.Count - 3; i = i + 3)
                    {
                        Vector2 v = new Vector2(this.pathList[i] / 10, this.pathList[i + 2] / 10);
                        pathListV2.Add(v);
                    }
                }

                return true;
            }
        }

        public void NodeToList()
        {
            this.pathList = new List<int>();
            ANode cur = this.finalNode;

            int finalG = this.finalNode.G;
            int num = 0;

            while (cur != null)
            {
                pathList.Insert(0, cur.X * 10);
                pathList.Insert(1, 0);
                pathList.Insert(2, cur.Y * 10);

                num = num + 1;


                cur = cur.Parent;
            }

            Debug.Log("final node.G == " + finalG + " all num == " + num);
        }


        private bool Init(int startX, int startY, int endX, int endY, int p_maxStep, bool ifNum)
        {
            this.startX = startX;
            this.startY = startY;
            this.endX = endX;
            this.endY = endY;
            this.maxStep = p_maxStep;
            this.currentStep = 0;
            this.finalNode = null;
            this.pathList = null;
            this.pathListV2 = null;
            this.ifNum = ifNum;

            ////初始化open表
            //for (int i = 0; i < sortedOpenQue.Count; i++)
            //{
            //    FreeANodePool.Instance.PushFreeNodeToPool(sortedOpenQue.heap[i]);
            //}

            sortedOpenQue.Clear();
            openDict.Clear();


            ////初始化close表
            //foreach (var n in closeDict.Values)
            //{
            //    FreeANodePool.Instance.PushFreeNodeToPool(n);
            //}

            closeDict.Clear();

            ANode startNode = this.grid.spots[startX][startY];
            startNode.Reset();
            startNode.X = startX;
            startNode.Y = startY;
            startNode.Parent = null;

            startNode.G = 0;
            startNode.H = GetNodeH(startX, startY, endX, endY);
            startNode.F = startNode.H + startNode.G;
            sortedOpenQue.Push(startNode);

            int key = ANode.Key(startX, startY);
            openDict.Add(key, startNode);

            return true;
        }

        public int GetNodeG(int _nodeX, int _nodeY, int endX, int endY)
        {
            int xm = Math.Abs(endX - _nodeX);
            int ym = Math.Abs(endY - _nodeY);
            int leng = xm * xm + ym * ym;
            int _nodeH = (int)(10 * Math.Sqrt(leng));
            //Debug.LogError("X == " + _nodeX + " Y == " + _nodeY + " return nodeH == " + _nodeH);
            return _nodeH;
        }

        public int GetNodeH(int _nodeX, int _nodeY, int endX, int endY)
        {
            int _nodeH = 10 * (Math.Abs(endX - _nodeX) + Math.Abs(endY - _nodeY));
            return _nodeH;

            //int xm = Math.Abs(endX - _nodeX);
            //int ym = Math.Abs(endY - _nodeY);
            //int leng = xm * xm + ym * ym;
            //int _nodeH = (int)(10 * Math.Sqrt(leng));
            //Debug.LogError("X == " + _nodeX + " Y == " + _nodeY + " return nodeH == " + _nodeH);
            //return _nodeH;
        }


        public ANode jump(ANode _neighbor, ANode _current, Grid _grid)
        {
            if (_neighbor == null || _neighbor.cost == 0)
            {
                return null;
            }

            if (_neighbor.X == endX && _neighbor.Y == endY)
            {
                return _neighbor;
            }

            int dx = _neighbor.X - _current.X;
            int dy = _neighbor.Y - _current.Y;

            ANode forceNeighbor1 = null;
            ANode obstacle1 = null;
            ANode forceNeighbor2 = null;
            ANode obstacle2 = null;

            if ((dx & dy) != 0)
            {
                //斜角
                forceNeighbor1 = _grid.getNeighbor(_neighbor, -dx, dy);
                obstacle1 = _grid.getNeighbor(_neighbor, -dx, 0);
                forceNeighbor2 = _grid.getNeighbor(_neighbor, dx, -dy);
                obstacle2 = _grid.getNeighbor(_neighbor, 0, -dy);

                if (HasForceNeighbor(forceNeighbor1, obstacle1, forceNeighbor2, obstacle2))
                {
                    return _neighbor;
                }
                //如果 _neighbor 没有强迫邻居 就检查该点水平方向 或者 竖直方向 是否有强迫邻居 如果有 也返回该点 为跳点 直到找到强迫邻居 或者 阻挡 或者地图越界为止
                if (jump(_grid.getNeighbor(_neighbor, dx, 0), _neighbor, _grid) != null ||
                    jump(_grid.getNeighbor(_neighbor, 0, dy), _neighbor, _grid) != null)
                {
                    return _neighbor;
                }
            }
            else
            {
                if (dx != 0)
                {
                    forceNeighbor1 = _grid.getNeighbor(_neighbor, dx, 1);
                    obstacle1 = _grid.getNeighbor(_neighbor, 0, 1);
                    forceNeighbor2 = _grid.getNeighbor(_neighbor, dx, -1);
                    obstacle2 = _grid.getNeighbor(_neighbor, 0, -1);

                }
                else if (dy != 0)
                {
                    forceNeighbor1 = _grid.getNeighbor(_neighbor, -1, dy);
                    obstacle1 = _grid.getNeighbor(_neighbor, -1, 0);
                    forceNeighbor2 = _grid.getNeighbor(_neighbor, 1, dy);
                    obstacle2 = _grid.getNeighbor(_neighbor, 1, 0);
                }
                if (HasForceNeighbor(forceNeighbor1, obstacle1, forceNeighbor2, obstacle2))
                {
                    return _neighbor;
                }
            }

            var H_cell = _grid.getNeighbor(_neighbor, dx, 0);
            var V_cell = _grid.getNeighbor(_neighbor, 0, dy);

            if ((H_cell != null && H_cell.cost != 0) || (V_cell != null && V_cell.cost != 0))
            {
                var D_Cell = _grid.getNeighbor(_neighbor, dx, dy);
                return jump(D_Cell, _neighbor, _grid);
            }
            else
            {
                return null;
            }
        }

        public bool HasForceNeighbor(ANode forceNeighbor1, ANode obstacle1, ANode forceNeighbor2, ANode obstacle2)
        {
            if ((obstacle1 != null && obstacle1.cost == 0 && forceNeighbor1 != null && forceNeighbor1.cost != 0) ||
            (obstacle2 != null && obstacle2.cost == 0 && forceNeighbor2 != null && forceNeighbor2.cost != 0))
            {
                return true;
            }
            return false;
        }


        public void GetNeighbors(ANode _spot)
        {
            neighbors.Clear();
            for (var i = 0; i < 8; i++)
            {
                //var dir = grid.drections[i];
                var neighbor = this.grid.getNeighbor(_spot, this.grid.drections[i, 0], this.grid.drections[i, 1]);
                if (neighbor != null && neighbor.cost != 0)
                {
                    if ((i % 2) != 0)
                    {//斜角度
                        int last_dir = (i - 1) % 8;
                        int next_dir = (i + 1) % 8;
                        //逆时针箭头转动 如果两个分量都是阻挡 无法通过 该点不加入
                        var last = this.grid.getNeighbor(_spot, this.grid.drections[last_dir, 0], this.grid.drections[last_dir, 1]);
                        var next = this.grid.getNeighbor(_spot, this.grid.drections[next_dir, 0], this.grid.drections[next_dir, 1]);
                        if (last != null && last.cost == 0 && next != null && next.cost == 0)
                        {
                            //console.log("对角");
                        }
                        else
                        {
                            neighbors.Add(neighbor);
                        }

                    }
                    else
                    {
                        //四个正方向的邻居都加进去
                        neighbors.Add(neighbor);
                    }
                }
            }
        }


        //////////////////////////////////////////////////////////////////////////CutMask////////////////////////////////////////////////////////////////////////////

        public void AddForceNeighbor(ANode _cell, Grid _grid, List<ANode> list, int _dirx, int _diry)
        {
            ANode forceNeighbor = _grid.getNeighbor(_cell, _dirx, _diry);
            if (forceNeighbor != null && forceNeighbor.cost != 0)
            {
                list.Add(forceNeighbor);
            }
        }


        public List<ANode> HorizontalTest(Grid _grid, ANode _currentCell, int _dir)
        {
            List<ANode> res = new List<ANode>();
            var nextCell = _grid.getNeighbor(_currentCell, _dir, 0);
            if (nextCell == null)
            {
                return res;
            }
            else
            {
                if (nextCell.cost != 0)
                {
                    res.Add(nextCell);
                }
            }
            var upCell = _grid.getNeighbor(_currentCell, 0, -1);
            var downCell = _grid.getNeighbor(_currentCell, 0, 1);

            //发现强制邻居节点
            if (upCell != null)
            {
                if (_dir == 1)
                {
                    AddForceNeighbor_D(_currentCell, _grid, res, 0, 2, 1);
                }
                else
                {
                    AddForceNeighbor_D(_currentCell, _grid, res, 0, 6, 7);
                }
            }
            if (downCell != null)
            {
                if (_dir == 1)
                {
                    AddForceNeighbor_D(_currentCell, _grid, res, 4, 2, 3);
                }
                else
                {
                    AddForceNeighbor_D(_currentCell, _grid, res, 4, 6, 5);
                }
            }
            return res;
        }
        public List<ANode> VerticalTest(Grid _grid, ANode _currentCell, int _dir)
        {
            List<ANode> res = new List<ANode>();
            var nextCell = _grid.getNeighbor(_currentCell, 0, _dir);
            if (nextCell == null)
            {
                return res;
            }
            else
            {
                if (nextCell.cost != 0)
                {
                    res.Add(nextCell);
                }
            }
            var leftCell = _grid.getNeighbor(_currentCell, -1, 0);
            var rightCell = _grid.getNeighbor(_currentCell, 1, 0);

            //发现强制邻居节点
            if (leftCell != null)
            {
                if (_dir == 1)
                {
                    AddForceNeighbor_D(_currentCell, _grid, res, 6, 4, 5);
                }
                else
                {
                    AddForceNeighbor_D(_currentCell, _grid, res, 6, 0, 7);
                }
            }
            if (rightCell != null)
            {
                if (_dir == 1)
                {
                    AddForceNeighbor_D(_currentCell, _grid, res, 2, 4, 3);
                }
                else
                {
                    AddForceNeighbor_D(_currentCell, _grid, res, 2, 0, 1);
                }
            }
            return res;
        }
        public List<ANode> DiagonalTest(Grid _grid, ANode _currentCell, int _dirx, int _diry)
        {
            List<ANode> res = new List<ANode>();
            var nextCell = _grid.getNeighbor(_currentCell, _dirx, _diry);


            var nextVCell = _grid.getNeighbor(_currentCell, 0, _diry);//垂直方向
            var nextHCell = _grid.getNeighbor(_currentCell, _dirx, 0);//水平方向

            if (nextVCell != null && nextVCell.cost != 0)
            {
                res.Add(nextVCell);
            }
            if (nextHCell != null && nextHCell.cost != 0)
            {
                res.Add(nextHCell);
            }
            if (nextVCell != null && nextVCell.cost == 0 && nextHCell != null && nextHCell.cost == 0)
            {
                //不允许穿过两个不可通行的节点之间
                return res;
            }
            else
            {
                if (nextCell != null && nextCell.cost != 0)
                {
                    res.Add(nextCell);
                }
            }

            //发现强制邻居节点
            if (_dirx == 1 && _diry == -1)
            {
                //右上
                AddForceNeighbor_D(_currentCell, _grid, res, 6, 0, 7);
                AddForceNeighbor_D(_currentCell, _grid, res, 4, 2, 3);
            }
            else if (_dirx == 1 && _diry == 1)
            {
                //右下
                AddForceNeighbor_D(_currentCell, _grid, res, 0, 2, 1);
                AddForceNeighbor_D(_currentCell, _grid, res, 6, 4, 5);
            }
            else if (_dirx == -1 && _diry == 1)
            {
                //左下
                AddForceNeighbor_D(_currentCell, _grid, res, 0, 6, 7);
                AddForceNeighbor_D(_currentCell, _grid, res, 2, 4, 3);
            }
            else
            {
                AddForceNeighbor_D(_currentCell, _grid, res, 2, 0, 1);
                AddForceNeighbor_D(_currentCell, _grid, res, 4, 6, 5);
            }

            return res;
        }
        //考虑斜角，不需从两个墙之间穿过
        public void AddForceNeighbor_D(ANode _cell, Grid _grid, List<ANode> list, int _close, int _open, int _add)
        {
            var closeCell = _grid.getNeighbor_byDirID(_cell, _close);
            var openCell = _grid.getNeighbor_byDirID(_cell, _open);
            if (openCell == null)
                return;
            if (closeCell.cost == 0 &&
                openCell.cost != 0)
            {
                AddForceNeighbor(_cell, _grid, list, _grid.drections[_add, 0], _grid.drections[_add, 1]);
            }
        }

        /////////////////////////////////////////////////////////////////////////////////////////////////////end CutMask///////////////////////////////////////////////////////////////////////


        public void GetNeighbors_WithCut(ANode _spot, int _dirx, int _diry)
        {
            neighbors.Clear();
            if (_dirx != 0 && _diry != 0)
            {
                //斜角
                neighbors = DiagonalTest(this.grid, _spot, _dirx, _diry);
            }
            else
            {
                //非斜角
                if (_dirx != 0)
                {
                    neighbors = HorizontalTest(this.grid, _spot, _dirx);
                }
                else
                {
                    neighbors = VerticalTest(this.grid, _spot, _diry);
                }
            }

            //console.log(`cut neighbor num = ${neighbors.length}, dirx = ${_dirx} ,diry = ${_diry}`);
        }


        public void Search()
        {
            ANode minFNode = sortedOpenQue.Pop();

            int _num = ANode.Key(minFNode.X, minFNode.Y);
            if (openDict.ContainsKey(_num))
            {
                openDict.Remove(_num);
            }

            closeDict.Add(_num, minFNode);
            currentStep++;


            //判断目标点，找到就结束
            if (minFNode.X == endX && minFNode.Y == endY)
            {
                finalNode = minFNode;
                return;
            }

            if (minFNode.Parent != null)
            {
                int dir_x = Mathf.Clamp(minFNode.X - minFNode.Parent.X, -1, 1);
                int dir_y = Mathf.Clamp(minFNode.Y - minFNode.Parent.Y, -1, 1);
                GetNeighbors_WithCut(minFNode, dir_x, dir_y);
            }
            else
            {
                GetNeighbors(minFNode);
            }

            //遍历邻居
            for (var i = 0; i < neighbors.Count; i++)
            {
                var neighbor = neighbors[i];

                var jumpNode = jump(neighbor, minFNode, this.grid);
                if (jumpNode != null && !closeDict.ContainsKey(jumpNode.GetKey()))
                {
                    var g_score = minFNode.G + GetNodeG(jumpNode.X, jumpNode.Y, minFNode.X, minFNode.Y);

                    if (openDict.ContainsKey(jumpNode.GetKey()))
                    {
                        if (g_score < jumpNode.G)
                        {
                            int sortK = -1;
                            bool ifSetK = false;
                            for (int k = 0; k < sortedOpenQue.Count; k++)
                            {
                                ANode nn = sortedOpenQue.heap[k];
                                if (jumpNode.X == nn.X && jumpNode.Y == nn.Y)
                                {
                                    if (ifSetK)
                                    {
                                        Debug.LogError("ifSetK == True ..........................................");
                                    }
                                    nn.Parent = minFNode;
                                    nn.G = g_score;
                                    nn.F = nn.G + nn.H;
                                    //if (sortK != -1)
                                    //{
                                    sortK = k;
                                    ifSetK = true;
                                    break;
                                    //} 
                                }
                            }

                            if (sortK != -1)
                            {
                                sortedOpenQue.Sort(sortK);
                            }
                        }
                    }
                    else
                    {
                        jumpNode.Parent = minFNode;
                        jumpNode.G = g_score;
                        jumpNode.H = GetNodeH(jumpNode.X, jumpNode.Y, endX, endY);
                        jumpNode.F = jumpNode.G + jumpNode.H;
                        sortedOpenQue.Push(jumpNode);
                        openDict.Add(jumpNode.GetKey(), jumpNode);
                    }
                }
            }

            //List<ANode> listV2 = this.GetAllSide(minFNode);

            //for (int i = 0; i < listV2.Count; i++)
            //{
            //    ANode node = listV2[i];
            //    int keyNum = ANode.Key(node.X, node.Y);

            //    //查open
            //    if (openDict.ContainsKey(keyNum))
            //    {
            //        int sortK = -1;
            //        bool ifSetK = false;
            //        for (int k = 0; k < sortedOpenQue.Count; k++)
            //        {
            //            ANode nn = sortedOpenQue.heap[k];
            //            if (node.X == nn.X && node.Y == nn.Y && node.G < nn.G)
            //            {
            //                if (ifSetK)
            //                {
            //                    Debug.LogError("ifSetK == True ..........................................");
            //                }
            //                nn.G = node.G;
            //                nn.F = node.F;
            //                nn.Parent = minFNode;
            //                //if (sortK != -1)
            //                //{
            //                sortK = k;
            //                ifSetK = true;
            //                break;
            //                //} 
            //            }
            //        }

            //        if (sortK != -1)
            //        {
            //            sortedOpenQue.Sort(sortK);
            //        }

            //        continue;
            //    }

            //    node.NodeType = this.aMapData.GetMapDataType(node.X, node.Y);
            //    node.Parent = minFNode;

            //    sortedOpenQue.Push(node);

            //    openDict.Add(keyNum, node);

            //}
        }
    }
}

