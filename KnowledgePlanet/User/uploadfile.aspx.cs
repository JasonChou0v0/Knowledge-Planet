using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KnowledgePlanet.User
{
    public partial class uploadfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtTitle.Text.Trim() == "" || txtDescription.Text.Trim() == "")
            {
                Response.Write("<script>alert('标题和描述不能为空')</script>");
                return;
            }
            string ConnStr = ConfigurationManager.ConnectionStrings["Database"].ToString();
            using (SqlConnection conn = new SqlConnection(ConnStr))
            {
                string ImageUrl = "";
                string DownloadUrl = "";
                if (fuThumbnail.HasFile)
                {
                    string fileName = Path.GetFileName(fuThumbnail.FileName);
                    string savePath = Server.MapPath("../images/") + fileName;
                    fuThumbnail.SaveAs(savePath);
                    ImageUrl = "../images/" + fileName;
                }
                if (fuFile.HasFile)
                {
                    string fileName = Path.GetFileName(fuFile.FileName);
                    string savePath = Server.MapPath("../files/") + fileName;
                    fuFile.SaveAs(savePath);
                    DownloadUrl = "../files/" + fileName;
                }
                conn.Open();
                string StrSQL = "insert into Books (Title, Description, ImageUrl, DownloadUrl) values (@Title, @Description, @ImageUrl, @DownloadUrl)";
                SqlCommand com = new SqlCommand(StrSQL, conn);
                com.Parameters.AddWithValue("@Title", txtTitle.Text);
                com.Parameters.AddWithValue("@Description", txtDescription.Text);
                com.Parameters.AddWithValue("@ImageUrl", ImageUrl);
                com.Parameters.AddWithValue("@DownloadUrl", DownloadUrl);
                int result = com.ExecuteNonQuery();
                if (result > 0)
                {
                    Response.Write("<script>alert('写入成功')</script>");
                }
                else
                {
                    Response.Write("<script>alert('写入失败')</script>");
                }
            }
        }
    }
}