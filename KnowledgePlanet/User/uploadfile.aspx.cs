using System;
using System.Collections.Generic;
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

        protected void btnUpLoad_Click(object sender, EventArgs e)
        {
            //取出所选文件的本地路径
            string fullFileName = this.UpLoad.PostedFile.FileName;
            //从路径中截取出文件名
            string fileName = fullFileName.Substring(fullFileName.LastIndexOf("\\") + 1);
            //限定上传文件的格式
            string type = fullFileName.Substring(fullFileName.LastIndexOf(".") + 1);
            if (type == "doc" || type == "docx" || type == "xls" || type == "xlsx" || type == "ppt" || type == "pptx" || type == "pdf" || type == "jpg" || type == "bmp" || type == "gif" || type == "png" || type == "txt" || type == "zip" || type == "rar")
            {
                //将文件保存在服务器中根目录下的files文件夹中
                string saveFileName = Server.MapPath("/files") + "\\" + fileName;
                UpLoad.PostedFile.SaveAs(saveFileName);
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", "<script language='javascript' defer>alert('文件上传成功！');</script>");

                //向数据库中存储相应通知的附件的目录
                
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", "<script language='javascript' defer>alert('请选择正确的格式');</script>");
            }
        }
    }
}