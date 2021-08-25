/********************************************************************
	created:	2021/6/29 17:38:26
	file base:	Assets/Scripts/Base/Utils/ByteUtils.cs
	author:		BINGLAU

	purpose:	
*********************************************************************/
using System;
using System.Text;

    public class ByteUtils
    {
        /// <summary>
        /// 指定编码
        /// </summary>
        private readonly static Encoding s_coding = Encoding.UTF8;

        /// <summary>
        /// C#默认为小端
        /// </summary>
        private readonly static bool s_isLittleEndian = true;

        /// <summary>
        /// 左移操作
        /// </summary>
        /// <param name="v"></param>
        /// <param name="c"></param>
        /// <returns></returns>
        public static int Lshift(int v, int c)
        {
            return v << c;
        }

        /// <summary>
        /// 右移操作
        /// </summary>
        /// <param name="v"></param>
        /// <param name="c"></param>
        /// <returns></returns>
        public static int Rshift(int v, int c)
        {
            return v >> c;
        }

        /// <summary>
        /// and操作
        /// </summary>
        /// <param name="v1"></param>
        /// <param name="v2"></param>
        /// <returns></returns>
        public static int Band(int v1, int v2)
        {
            return v1 & v2;
        }

        /// <summary>
        /// or操作
        /// </summary>
        /// <param name="v1"></param>
        /// <param name="v2"></param>
        /// <returns></returns>
        public static int Bor(int v1, int v2)
        {
            return v1 | v2;
        }

        /// <summary>
        /// 异或操作
        /// </summary>
        /// <param name="v1"></param>
        /// <param name="v2"></param>
        /// <returns></returns>
        public static int Bxor(int v1, int v2)
        {
            return v1 ^ v2;
        }

        /// <summary>
        /// 字符串转字节数组
        /// </summary>
        /// <param name="s">字符串</param>
        /// <returns>返回字节数组</returns>
        public static byte[] String2ByteArray(string s)
        {
            if (s == null)
            {
                return null;
            }

            return s_coding.GetBytes(s);
        }

        /// <summary>
        /// 字节叔祖转UTF-8格式字符串
        /// </summary>
        /// <param name="s">字节数组</param>
        /// <returns>返回字符串</returns>
        public static string ByteArray2String(byte[] s)
        {
            if (s == null || s.Length <= 0)
            {
                return string.Empty;
            }

            return s_coding.GetString(s, 0, s.Length);
        }

        /// <summary>
        /// short 转 字节叔祖
        /// </summary>
        /// <param name="s">short 数组</param>
        /// <returns>返回字节数组</returns>
        public static byte[] Short2ByteArray(short s)
        {
            byte[] r = new byte[2];

            if (s_isLittleEndian)
            {
                r[0] = (byte)(s);
                r[1] = (byte)(s >> 8);
            }
            else
            {
                r[1] = (byte)(s);
                r[0] = (byte)(s >> 8);
            }

            return r;
        }

        /// <summary>
        /// 转字节数组指定为 short
        /// </summary>
        /// <param name="s">字节数组</param>
        /// <param name="startPos">指定开始索引值</param>
        /// <returns>返回转换后值</returns>
        public static short ByteArray2Short(byte[] s, int startPos = 0)
        {
            if (s == null || s.Length <= 0)
            {
                return default(short);
            }

            if (startPos + 2 > s.Length)
            {
                throw new Exception("ByteArray is out index.");
            }

            return (short)ToInt(s[startPos], s[startPos + 1]);
        }

        /// <summary>
        /// short数组 转 字节数组
        /// </summary>
        /// <param name="val">short数组</param>
        /// <returns>返回字节数组</returns>
        public static byte[] ShortArray2ByteArray(short[] val)
        {
            if (val == null || val.Length <= 0)
            {
                return null;
            }

            byte[] ret = new byte[val.Length * 2];

            for (int i = 0; i < val.Length; i++)
            {
                if (s_isLittleEndian)
                {
                    ret[i * 2] = (byte)(val[i]);
                    ret[i * 2 + 1] = (byte)(val[i] >> 8);
                }
                else
                {
                    ret[i * 2 + 1] = (byte)(val[i]);
                    ret[i * 2] = (byte)(val[i] >> 8);
                }
            }

            return ret;
        }

        /// <summary>
        /// byte数组 转 short数组
        /// </summary>
        /// <param name="s">byte数组</param>
        /// <returns>返回short数组</returns>
        public static short[] ByteArray2ShortArray(byte[] s)
        {
            if (s == null || s.Length <= 0)
            {
                return null;
            }

            short[] r = new short[s.Length / 2];
            for (int i = 0; i < s.Length; i++)
            {
                r[i] = (short)ToInt(s[i * 2], s[i * 2 + 1]);
            }

            return r;
        }

        /// <summary>
        /// int 转 字节数组
        /// </summary>
        /// <param name="s">int 值</param>
        /// <returns>返回字节数组</returns>
        public static byte[] Int2ByteArray(int s)
        {
            byte[] r = new byte[4];

            if (s_isLittleEndian)
            {
                r[0] = (byte)(s);
                r[1] = (byte)(s >> 8);
                r[2] = (byte)(s >> 16);
                r[3] = (byte)(s >> 24);
            }
            else
            {
                r[3] = (byte)(s);
                r[2] = (byte)(s >> 8);
                r[1] = (byte)(s >> 16);
                r[0] = (byte)(s >> 24);
            }

            return r;
        }

        /// <summary>
        /// 转字节数组指定为 int
        /// </summary>
        /// <param name="s">字节数组</param>
        /// <param name="startPos">指定开始索引</param>
        /// <returns>返回转换后int值</returns>
        public static int ByteArray2Int(byte[] s, int startPos = 0)
        {
            if (s == null || s.Length <= 0)
            {
                return default(short);
            }

            if (startPos + 4 > s.Length)
            {
                throw new Exception("ByteArray is out index.");
            }

            return ToInt(s[startPos], s[startPos + 1], s[startPos + 2], s[startPos + 3]);
        }

        /// <summary>
        /// int数组 转 字节数组
        /// </summary>
        /// <param name="s">int数组</param>
        /// <returns>返回字节数组</returns>
        public static byte[] IntArray2ByteArray(int[] s)
        {
            if (s == null || s.Length <= 0)
            {
                return null;
            }

            byte[] r = new byte[s.Length * 4];
            for (int i = 0; i < s.Length; i++)
            {
                if (s_isLittleEndian)
                {
                    r[i * 4] = (byte)s[i];
                    r[i * 4 + 1] = (byte)(s[i] >> 8);
                    r[i * 4 + 2] = (byte)(s[i] >> 16);
                    r[i * 4 + 3] = (byte)(s[i] >> 24);
                }
                else
                {
                    r[i * 4 + 3] = (byte)s[i];
                    r[i * 4 + 2] = (byte)(s[i] >> 8);
                    r[i * 4 + 1] = (byte)(s[i] >> 16);
                    r[i * 4] = (byte)(s[i] >> 24);
                }
            }

            return r;
        }

        /// <summary>
        /// byte数组 转 int数组
        /// </summary>
        /// <param name="s">byte数组</param>
        /// <returns>返回int数组</returns>
        public static int[] ByteArray2IntArray(byte[] s)
        {
            if (s == null || s.Length <= 0)
            {
                return null;
            }

            int[] r = new int[s.Length / 4];
            for (int i = 0; i < s.Length; i++)
            {
                r[i] = ToInt(s[i * 4], s[i * 4 + 1], s[i * 4 + 2], s[i * 4 + 3]);
            }

            return r;
        }

        /// <summary>
        /// 将2个byte 转 int
        /// </summary>
        /// <param name="a1">高8位</param>
        /// <param name="a2">第8位</param>
        /// <returns></returns>
        public static int ToInt(byte a1, byte a2)
        {
            if (s_isLittleEndian)
            {
                return
                    (a1 & 0xFF) |
                    ((a2 & 0xFF) << 8);
            }
            else
            {
                return
                   (a2 & 0xFF) |
                   ((a1 & 0xFF) << 8);
            }
        }

        /// <summary>
        /// 4 byte 转 int
        /// </summary>
        /// <param name="a1">第1个8位</param>
        /// <param name="a2">第2个8位</param>
        /// <param name="a3">第3个8位</param>
        /// <param name="a4">第4个8位</param>
        /// <returns></returns>
        public static int ToInt(byte a1, byte a2, byte a3, byte a4)
        {
            if (s_isLittleEndian)
            {
                return
                    (a1 & 0xFF) |
                    ((a2 & 0xFF) << 8) |
                    ((a3 & 0xFF) << 16) |
                    ((a4 & 0xFF) << 24);
            }
            else
            {
                return
                    (a4 & 0xFF) |
                    ((a3 & 0xFF) << 8) |
                    ((a2 & 0xFF) << 16) |
                    ((a1 & 0xFF) << 24);
            }
        }

        /// <summary>
        /// 把整数间的某几位置为定义值,右边第一位 索引为0 左边最后一位索引为31
        /// </summary>
        /// <param name="s"></param>
        /// <param name="startPos">开始位  从右到左</param>
        /// <param name="value">值 大于等于0   低位在startPos, 左边为高位 右边为低位</param>
        /// <param name="overWriteLength">值覆盖长度，从右到左</param>
        /// <returns></returns>
        public static int SetBitValue(int s, int startPos, int value, int overWriteLength)
        {
            if (value < 0 || startPos < 0 || startPos > 31)
            {
                throw new Exception("Param not legal");
            }
            return (~(~(-1 << overWriteLength) << startPos) & s) | (value << startPos);
        }

        /// <summary>
        /// 得到一个整数间某几个位的值
        /// </summary>
        /// <param name="s"></param>
        /// <param name="startPos">开始位  从右到左</param>
        /// <param name="length">从右到左的长度，左边为高位 右边为低位</param>
        /// <returns></returns>
        public static int GetBitValue(int s, int startPos, int length)
        {
            return ((~(-1 << length) << startPos) & s) >> startPos;
        }

        /// <summary>
        /// 将字节数组转换为16进制字符串
        /// </summary>
        /// <param name="s">字节数组</param>
        /// <returns>字符数组</returns>
        public static char[] ChangeByte2HpyChar(byte[] s)
        {
            char[] r = new char[s.Length * 2];
            for (int i = 0; i < s.Length; i++)
            {
                r[i * 2] = ChangeHyp2Char((s[i] >> 4) & 0x0F);
                r[i * 2 + 1] = ChangeHyp2Char(s[i] & 0x0F);
            }
            return r;
        }

        /// <summary>
        /// 将16进制字符数组转为字节数组
        /// </summary>
        /// <param name="s">字符数组</param>
        /// <returns>字节数组</returns>
        public static byte[] ChangeChar2Hpy(char[] s)
        {
            byte[] r = new byte[s.Length / 2];

            for (int i = 0; i < r.Length; i++)
            {
                r[i] = (byte)(ChangeHpyChar2Byte(s[i * 2]) << 4 | ChangeHpyChar2Byte(s[i * 2 + 1]));
            }

            return r;
        }


        /// <summary>
        /// 将16进制字符转换为数字
        /// </summary>
        /// <param name="s">字符</param>
        /// <returns>返回数字</returns>
        public static byte ChangeHpyChar2Byte(char s)
        {
            if (s > 57)
            {
                return (byte)(s - 87);
            }
            else
            {
                return (byte)(s - 48);
            }
        }

        /// <summary>
        /// 将数字转换成16进制
        /// </summary>
        /// <param name="s">数字</param>
        /// <returns>返回字符</returns>
        public static char ChangeHyp2Char(int s)
        {
            if (s < 0 || s > 15)
            {
                throw new Exception("Param not legal");
            }
            if (s < 10)
            {
                return (char)(48 + s);
            }
            else
            {
                return (char)(87 + s);
            }
        }
    }
