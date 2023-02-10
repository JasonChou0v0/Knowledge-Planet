using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KnowledgePlanet
{
    public partial class LoginPage : System.Web.UI.Page
    {
        CommDB mydb = new CommDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            txtUserName.Focus();
            if (!Page.IsPostBack)
                Label1.Text = mydb.RandomNum(4);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text.Trim() == "" | txtPassword.Text.Trim() == "")
            {
                Response.Write("<script>alert('用户名和密码不能为空')</script>"); 
                return;
            }
            string ConnStr = ConfigurationManager.ConnectionStrings["Database"].ToString();
            using (SqlConnection conn = new SqlConnection(ConnStr))
            {
                conn.Open();
                string StrSQL = "select ulevel from T_UserData where uname='" + txtUserName.Text + "'and upwd='" + txtPassword.Text + "'";
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
                    Response.Write("<script>alert('用户名或密码错误')</script>");
                    return;
                }
                if (level == "0")
                {
                    Session["pass"] = "admin";
                    Response.Redirect("managermenu.aspx");
                }
                else
                {
                    Session["pass"] = "guest";
                    Response.Redirect("usermenu.aspx");
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label1.Text = mydb.RandomNum(4);
        }
    }
}