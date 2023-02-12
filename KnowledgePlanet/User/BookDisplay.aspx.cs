using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KnowledgePlanet.User
{
    public partial class BookDisplay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadBooks();
            }

            if (Session["pass"] == null || (bool)(Session["pass"].ToString() != "guest"))
            {
                Response.Redirect("../main.html");
            }

        }
        private void LoadBooks()
        {
            DataTable dtBooks = new DataTable();
            string ConnStr = ConfigurationManager.ConnectionStrings["Database"].ToString();
            using (SqlConnection connection = new SqlConnection(ConnStr))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand("SELECT BookId, Title, Description, ImageUrl, DownloadUrl FROM Books WHERE State = 1", connection))
                //using (SqlCommand command = new SqlCommand("SELECT BookId, Title, Description, ImageUrl, TagName FROM Books b LEFT JOIN BookTags bt ON b.BookId = bt.BookId", connection))
                {
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    adapter.Fill(dtBooks);
                }
            }

            DataView view = new DataView(dtBooks);
            DataTable distinctValues = view.ToTable(true, "BookId", "Title", "Description", "ImageUrl", "DownloadUrl");

            foreach (DataRow row in distinctValues.Rows)
            {
                DataRow[] tags = dtBooks.Select("BookId = " + row["BookId"]);
                //DataTable dtTags = new DataTable();  
            }

            rptBooks.DataSource = distinctValues;
            rptBooks.DataBind();
        }
    }
}