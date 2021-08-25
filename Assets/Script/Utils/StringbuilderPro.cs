/********************************************************************
	created:	2021/5/18 10:44:12
	file base:	Assets/Scripts/Base/Utils/StringbuilderPro.cs
	author:		Bing Lau

	purpose:	
*********************************************************************/
using System;
using System.Text;

    public class StringBuilderPro
    {
        StringBuilder sb = new StringBuilder();

        private int _tabCount = 0;

        public StringBuilderPro AddTab()
        {
            _tabCount++;
            return this;
        }

        public StringBuilderPro SubTab()
        {
            _tabCount--;
            return this;
        }

        public StringBuilderPro NewLine(int count = 1)
        {
            for (int i = 0; i < count; i++)
            {
                sb.Append('\n');
            }
            return this;
        }

        public StringBuilderPro AppendTab()
        {
            for (int i = 0; i < _tabCount; i++)
            {
                Append("    ");
            }
            return this;
        }

        public override string ToString()
        {
            return sb.ToString();
        }

        public StringBuilderPro Clear()
        {
            sb.Clear();
            return this;
        }

        public StringBuilderPro Space()
        {
            sb.Append(" "); return this;
        }

        public StringBuilderPro Append(string value)
        {
            sb.Append(value); return this;
        }

        public StringBuilderPro Append(bool value)
        {
            sb.Append(value); return this;
        }

        public StringBuilderPro Append(sbyte value)
        {
            sb.Append(value); return this;
        }

        public StringBuilderPro Append(byte value)
        {
            sb.Append(value); return this;
        }

        public StringBuilderPro Append(char value)
        {
            sb.Append(value); return this;
        }

        public StringBuilderPro Append(short value)
        {
            sb.Append(value); return this;
        }

        public StringBuilderPro Append(int value)
        {
            sb.Append(value); return this;
        }

        public StringBuilderPro Append(long value)
        {
            sb.Append(value); return this;
        }

        public StringBuilderPro Append(float value)
        {
            sb.Append(value); return this;
        }

        public StringBuilderPro Append(double value)
        {
            sb.Append(value); return this;
        }

        public StringBuilderPro Append(decimal value)
        {
            sb.Append(value); return this;
        }

        public StringBuilderPro Append(ushort value)
        {
            sb.Append(value); return this;
        }

        public StringBuilderPro Append(uint value)
        {
            sb.Append(value); return this;
        }

        public StringBuilderPro Append(ulong value)
        {
            sb.Append(value); return this;
        }

        public StringBuilderPro Append(object value)
        {
            sb.Append(value); return this;
        }

        public StringBuilderPro Append(char[] value)
        {
            sb.Append(value); return this;
        }

        public StringBuilderPro AppendFormat(string format, object arg0)
        {
            sb.AppendFormat(format, arg0); return this;
        }

        public StringBuilderPro AppendFormat(string format, object arg0, object arg1)
        {
            sb.AppendFormat(format, arg0, arg1); return this;
        }

        public StringBuilderPro AppendFormat(string format, object arg0, object arg1, object arg2)
        {
            sb.AppendFormat(format, arg0, arg1, arg2); return this;
        }

        public StringBuilderPro AppendFormat(string format, params object[] args)
        {
            sb.AppendFormat(format, args); return this;
        }

        public StringBuilderPro AppendFormat(IFormatProvider provider, string format, object arg0)
        {
            sb.AppendFormat(provider, format, arg0); return this;
        }

        public StringBuilderPro AppendFormat(IFormatProvider provider, string format, object arg0, object arg1)
        {
            sb.AppendFormat(provider, format, arg0, arg1); return this;
        }

        public StringBuilderPro AppendFormat(IFormatProvider provider, string format, object arg0, object arg1, object arg2)
        {
            sb.AppendFormat(provider, format, arg0, arg1, arg2); return this;
        }

        public StringBuilderPro AppendFormat(IFormatProvider provider, string format, params object[] args)
        {
            sb.AppendFormat(provider, format, args); return this;
        }

        public int Length
        {
            get { return sb.Length; }
            set { sb.Length = value; }
        }
    }
