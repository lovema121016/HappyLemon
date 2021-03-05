﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using HappyLemon.model;
using HappyLemon.dao;
namespace HappyLemon.guanli
{
    public partial class addgood : Form
    {
        public shangpingguanli s;
        public addgood()
        {
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {
          Number.Text="";
            Name1.Text="";
            Type.Text="";
            Unit.Text="";
            Price.Text=""; 
        }

        private void addgood_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
                     
            if (Number.Text == "")
            {
                MessageBox.Show("商品编码不能为空！");
            }
            else if (Name1.Text == "")
            {
                MessageBox.Show("商品名称不能为空！");
            }

            else if (Type.Text == "")
            {
                MessageBox.Show("类型不能为空！");
            }
            else if (Unit.Text == "")
            {
                MessageBox.Show("单位不能为空！");
            }
            else if (Price.Text == "")
            {
                MessageBox.Show("单价不能为空！");
            }
            else
            {
                try
                {
                    string number = Number.Text;
                    string name = Name1.Text;
                    string type = Type.Text;
                    string unit = Unit.Text;
                    double price = double.Parse(Price.Text);
                    goodDaoz c = new goodDaoz();

                    string msg = "确定添加吗？";

                    if ((int)MessageBox.Show(msg, "提示", MessageBoxButtons.OKCancel, MessageBoxIcon.Exclamation) != 1)
                    {
                        return;
                    }
                    c.addGood(number, name, type, unit, price);
                    Console.Write(c.su + "!!");
                    if (c.su == 0)
                    {

                    }
                    else
                    {
                        int node = s.dataGridView1.Rows.Count;
                        s.dt.Rows.Add(node + 1, number, name, type, unit, price);
                        s.dataGridView1.DataSource = s.dt;
                        this.Close();
                    }
                }
                catch (SystemException)
                {
                    MessageBox.Show("格式不正确");
                }
            }
        }

        private void Type_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
