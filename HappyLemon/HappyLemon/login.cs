using System;
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
using System.IO;

namespace HappyLemon
{
    public partial class login : Form
    {
        public login()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            label3.Text = "";
            label4.Text = "";
            if (textBox1.Text == "")
            {
                label4.Text = "用户名不能为空";
            }
            if (textBox2.Text == "")
            {
                label5.Text = "密码不能为空";
            }
            if (textBox2.Text != "" && textBox1.Text != "")
            {
                button1.ForeColor = Color.YellowGreen;
               
                if (textBox1.Text == "admin" && textBox1.Text == "admin")
                {
                    index x = new index();
                    x.type = "管理员";
                    this.Hide();
                    x.Show();
                    this.Visible = false;
                }
                else
                {
                    employ ee = new employ();
                    employeedao edao = new employeedao();
                    ee = edao.selectemployee(textBox1.Text, textBox2.Text);
                    if (ee == null)
                    {
                        
                        MessageBox.Show("用户名或密码错误");
                    }
                    else
                    {
                        index x = new index();
                        x.type = textBox1.Text;
                        this.Hide();
                        x.Show();
                        this.Visible = false;
                    }
                }
            }
        }

        private void login_Load(object sender, EventArgs e)
        {
            skinEngine1.SkinFile = Application.StartupPath + @"\DiamondOlive.ssk";
        }
    }
}
