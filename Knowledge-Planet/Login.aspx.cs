using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Knowledge_Planet
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Title = "reader对象应用示例";
            txtUserName.Focus();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text.Trim() == "" | txtPassword.Text.Trim() == "")
            {
                lblMsg.Text = "用户名和密码不能为空";
                return;
            }
            string ConnStr = ConfigurationManager.ConnectionStrings["UserData"].ToString();
            using (SqlConnection conn = new SqlConnection(ConnStr))
            {
                conn.Open();
                string StrSQL = "select ulevel from LoginInfo where uname='" + txtUserName.Text + "'and upwd='" + txtPassword.Text + "'";
                SqlCommand com = new SqlCommand(StrSQL, conn);
                SqlDataReader dr = com.ExecuteReader();
                dr.Read();
                string level;
                if (dr.HasRows)
                {
                    level = dr["ulevel"].ToString();
                }
                else
                {
                    lblMsg.Text = "用户名或密码错误";
                    return;
                }
                if (level == "0")
                {
                    Session["pass"] = "admin";
                    Response.Redirect("AdminPage.aspx");
                }
                else
                {
                    Session["pass"] = "guest";
                    Response.Redirect("GuestPage.aspx");
                }
            }
        }
    }
}