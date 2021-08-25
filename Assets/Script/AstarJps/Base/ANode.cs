using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

namespace ACE
{
    public class ANode
    {
        public int X;
        public int Y;
        public int G;
        public int H;
        public int F;
        public int cost;

        public ANode Parent;
        public ANode Next;

        public ANode()
        {
            
        }

        public ANode(int x, int y)
        {
            this.X = x;
            this.Y = y;
        }

        public ANode(int x, int y, int cost)
        {
            this.X = x;
            this.Y = y;
            this.cost = cost;
        }

        public void Reset()
        {
            X = 0;
            Y = 0;
            G = 0;
            H = 0;
            F = 0;
            Parent = null;
            Next = null;
        }

        public int GetKey()
        {
            return ANode.Key(this);    
        }

        public static int Key(ANode node)
        {
            int key = node.X + (node.Y << 16);
            return key;
        }

        public static int Key(int x, int y)
        {
            int key = x + (y << 16);
            return key;
        }
    }

    public class FreeANodePool
    {
        private static FreeANodePool instance = null;

        public static FreeANodePool Instance
        {
            get
            {
                if (instance == null)
                    instance = new FreeANodePool();
                return instance;
            }
        }

        public int size = 0;
        public ANode head = null;

        public ANode GetFreeNode()
        {
            if (size == 0)
            {
                return new ANode();
            }
            else if (size == 1)
            {
                size = 0;
                return head;
            }
            else
            {
                ANode tempNode = head;
                head = head.Next;
                tempNode.Next = null;
                size--;
                return tempNode;
            }
        }

        public void PushFreeNodeToPool(ANode node)
        {
            node.Reset();

            if (size == 0)
            {
                head = node;
            }
            else
            {
                node.Next = head;
                head = node;
            }

            size++;
        }
    }

    public class ANodeCom : IComparer<ANode>
    {
        public int Compare(ANode a, ANode b)
        {
            if (a.F < b.F)
                return -1;
            else if (a.F == b.F)
                return 0;
            else
            {
                return 1;
            }
        }
    }


    public class PriorityQueue<T>
    {
        int capacity;
        public int Count { get; private set; }
        IComparer<T> comparer;
        public T[] heap;

        public PriorityQueue(int capacity, IComparer<T> comparer)
        {
            this.capacity = capacity;
            this.comparer = comparer;
            this.heap = new T[capacity];
        }

        public void Push(T v)
        {
            if (Count >= heap.Length)
            {
                int _size = Count << 1;
                capacity = _size;
                Array.Resize(ref heap, _size);
            }

            heap[Count] = v;

            Up(Count++);

            //ANode node = v as ANode;
            //Debug.LogError("push heap nodeX == " + node.X + " nodeY == " + node.Y + " nodeG == " + node.G + " nodeH == " + node.H + " nodeF == " + node.F);
            //PrintHeap();
        }

        public void PrintHeap()
        {
            for (int i = 0; i < Count; i++)
            {
                ANode node = heap[i] as ANode;
                Debug.LogError("print heap i == " + i + " node.X == " + node.X + " nodeY == " + node.Y + " nodeG == " + node.G + " nodeH == " + node.H + " nodeF == " + node.F);
            }
        }

        public T Pop()
        {
            var v = Top();

            heap[0] = heap[--Count];
            if (Count > 0) Down(0);

            //ANode node = v as ANode;
            //Debug.LogError("pop heap nodeX == " + node.X + " nodeY == " + node.Y + " nodeG == " + node.G + " nodeH == " + node.H + " nodeF == " + node.F);
            //PrintHeap();
            return v;
        }

        public T Top()
        {
            if (Count > 0) return heap[0];

            throw new InvalidOperationException("PriorityQueue null");
        }

        public void Up(int n)
        {
            var v = heap[n];

            //for (var n2 = (n >> 1); n > 0 && comparer.Compare(v, heap[n2]) < 0; n = n2, n2 = (n2 >> 1))
            //{
            //    heap[n] = heap[n2];
            //}

            for (var n2 = (n - 1) / 2; n > 0 && comparer.Compare(v, heap[n2]) < 0; n = n2, n2 = (n2 - 1) / 2)
            {
                heap[n] = heap[n2];
            }

            heap[n] = v;
        }

        public void Sort(int n)
        {
            if (n < 0) { Debug.LogError("in AstarV2.Sort n < 0"); }
            else if (n == 0)
            {
                Down(n);
            }
            else
            {
                var n2 = (n - 1) / 2;
                if (comparer.Compare(heap[n], heap[n2]) < 0)
                {
                    Up(n);
                }
                else
                {
                    Down(n);
                }
            }
        }

        public void Down(int n)
        {
            var v = heap[n];

            for (var n2 = n * 2 + 1; n2 < Count; n = n2, n2 = n2 * 2 + 1)
            {
                if (n2 + 1 < Count && comparer.Compare(heap[n2 + 1], heap[n2]) < 0)
                {
                    n2++;
                }

                if (comparer.Compare(v, heap[n2]) <= 0) break;
                heap[n] = heap[n2];
            }

            heap[n] = v;
        }

        public void Clear()
        {
            Array.Clear(heap, 0, this.Count);
            this.Count = 0;
        }
    }
}
