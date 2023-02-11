using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KnowledgePlanet
{
    public partial class Register : System.Web.UI.Page
    {
        CommDB mydb = new CommDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            txtUserName.Focus();
            if (!Page.IsPostBack)
                MyLabel.Text = mydb.RandomNum(4);
        }
        protected void MyButton_Click(object sender, EventArgs e)
        {
            MyLabel.Text = mydb.RandomNum(4);
        }


        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            if (TextBox3.Text.Trim() == "" || TextBox3.Text.Trim() != MyLabel.Text.Trim())
            {
                Response.Write("<script>alert('验证码错误或为空')</script>");
                return;
            }
            else
            {
                string patternUsername = @"^[a-zA-Z0-9._-]+$";
                string patternPassword = @"^[a-zA-Z0-9._!@#$%^&*-]+$";
                if (!Regex.IsMatch(txtUserName.Text.Trim(), patternUsername))
                {
                    Response.Write("<script>alert('用户名不符合要求')</script>");
                    return;
                }
                else if (!Regex.IsMatch(txtPassword.Text.Trim(), patternPassword))
                {
                    Response.Write("<script>alert('密码不符合要求')</script>");
                    return;
                }
                else
                {
                    if (txtUserName.Text.Trim() == "" || txtPassword.Text.Trim() == "")
                    {
                        Response.Write("<script>alert('用户名和密码不能为空')</script>");
                        return;
                    }
                    string ConnStr = ConfigurationManager.ConnectionStrings["Database"].ToString();
                    using (SqlConnection conn = new SqlConnection(ConnStr))
                    {
                        conn.Open();
                        int nextUid = 0;
                        string StrSQL = "SELECT MAX(uid) + 1 AS next_uid FROM T_UserData";
                        SqlCommand com = new SqlCommand(StrSQL, conn);
                        SqlDataReader dr = com.ExecuteReader();
                        if (dr.HasRows)
                        {
                            dr.Read();
                            nextUid = dr.GetInt32(0);
                        }
                        dr.Close();

                        StrSQL = "insert into T_UserData(uid, uname, upwd, ulevel, state) values (@uid, @uname, @upwd, @ulevel, @state)";
                        com = new SqlCommand(StrSQL, conn);
                        com.Parameters.AddWithValue("@uid", nextUid);
                        com.Parameters.AddWithValue("@uname", txtUserName.Text);
                        com.Parameters.AddWithValue("@upwd", txtPassword.Text);
                        com.Parameters.AddWithValue("@ulevel", "1");
                        com.Parameters.AddWithValue("@state", "1");
                        int result = com.ExecuteNonQuery();
                        if (result > 0)
                        {
                            Response.Write("<script>alert('注册成功');window.location='Login.aspx';</script>");
                        }
                        else
                        {
                            Response.Write("<script>alert('注册失败')</script>");
                        }
                    }
                }
                
            }
        }
    }
}