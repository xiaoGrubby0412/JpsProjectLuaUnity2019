using UnityEngine;
using System.Collections;

namespace ACE
{
    public class Grid
    {
        public static Grid Instance = null;

        public int cols;
        public int rows;
        public ANode[][] spots;

        public void SetGridSize(int cols, int rows)
        {
            this.cols = cols;
            this.rows = rows;

            this.spots = new ANode[this.cols][];
            for (int i = 0; i < this.cols; i++)
            {
                this.spots[i] = new ANode[this.rows];
                for (int j = 0; j < this.rows; j++)
                {
                    this.spots[i][j] = new ANode(i, j);
                    this.spots[i][j].cost = 1;
                }
            }
        }

        public readonly int[,] drections = {
            { 0, -1 },//0
            { 1, -1 },//1
            { 1, 0 }, //2
            { 1, 1 }, //3
            { 0, 1 }, //4
            { -1, 1 },//5
            { -1, 0 },//6
            { -1, -1 }//7
        };

        public ANode getNeighbor(ANode _currentCell, int _dx, int _dy)
        {
            var x = _currentCell.X + _dx;
            var y = _currentCell.Y + _dy;

            if (x >= 0 && x <= cols - 1 && y >= 0 && y <= rows - 1)
            {
                return this.spots[x][y];
            }
            else
            {
                return null;
            }
        }

        public ANode getNeighbor_byDirID(ANode _currentCell, int _dir)
        {
            var x = _currentCell.X + this.drections[_dir, 0];
            var y = _currentCell.Y + this.drections[_dir, 1];

            if (x >= 0 && x <= cols - 1 && y >= 0 && y <= rows - 1)
            {
                return this.spots[x][y];
            }
            else
            {
                return null;
            }
        }

        public void SetBlock(int x, int y)
        {
            this.spots[x][y].cost = 0;
        }

        public void SetNormal(int x, int y)
        {
            this.spots[x][y].cost = 1;
        }
    }
}

