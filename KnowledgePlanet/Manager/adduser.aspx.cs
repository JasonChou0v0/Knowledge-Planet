using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KnowledgePlanet.Manager
{
    public partial class adduser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["pass"] == null || (bool)(Session["pass"].ToString() != "admin"))
            {
                Response.Redirect("../main.html");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text.Trim() == "" || txtPassword.Text.Trim() == "")
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
                com.Parameters.AddWithValue("@uname", txtUsername.Text);
                com.Parameters.AddWithValue("@upwd", txtPassword.Text);
                com.Parameters.AddWithValue("@ulevel", "1");
                if (RadioButton1.Checked)
                {
                    com.Parameters.AddWithValue("@state", "1");
                }
                if (RadioButton2.Checked)
                {
                    com.Parameters.AddWithValue("@state", "0");
                }
                int result = com.ExecuteNonQuery();
                if (result > 0)
                {
                    Response.Write("<script>alert('注册成功')</script>");
                }
                else
                {
                    Response.Write("<script>alert('注册失败')</script>");
                }
            }
        }
    }
}