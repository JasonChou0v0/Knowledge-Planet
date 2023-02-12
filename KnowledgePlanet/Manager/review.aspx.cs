using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KnowledgePlanet.Manager
{
    public partial class review : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadBooks();
            }

            if (Session["pass"] == null || (bool)(Session["pass"].ToString() != "admin"))
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
                using (SqlCommand command = new SqlCommand("SELECT BookId, Title, Description, ImageUrl, DownloadUrl FROM Books WHERE State = 0", connection))
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

        protected void btnPass_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            if (Int32.TryParse(btn.CommandArgument, out int bookId))
            {
                string ConnStr = ConfigurationManager.ConnectionStrings["Database"].ToString();
                using (SqlConnection connection = new SqlConnection(ConnStr))
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand("UPDATE Books SET State = 1 WHERE BookId = @bookId", connection))
                    {
                        command.Parameters.AddWithValue("@bookId", bookId);
                        command.ExecuteNonQuery();
                        int rowsAffected = command.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                            // Update was successful
                            LoadBooks();
                            Response.Write("<script>alert('已通过')</script>");
                        }
                        else
                        {
                            // Update failed
                            Response.Write("<script>alert('操作失败')</script>");
                        }
                    }
                }

                LoadBooks();
            } 
        }


        protected void btnOverrule_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            if (Int32.TryParse(btn.CommandArgument, out int bookId))
            {
                string ConnStr = ConfigurationManager.ConnectionStrings["Database"].ToString();
                using (SqlConnection connection = new SqlConnection(ConnStr))
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand("UPDATE Books SET State = -1 WHERE BookId = @bookId", connection))
                    {
                        command.Parameters.AddWithValue("@bookId", bookId);
                        command.ExecuteNonQuery();
                        int rowsAffected = command.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                            // Update was successful
                            LoadBooks();
                            Response.Write("<script>alert('已驳回')</script>");
                        }
                        else
                        {
                            // Update failed
                            Response.Write("<script>alert('操作失败')</script>");
                        }
                    }
                }

                LoadBooks();
            }
        }

        protected void rptBooks_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Button btnPass = (Button)e.Item.FindControl("btnPass");
                btnPass.CommandArgument = ((DataRowView)e.Item.DataItem)["BookId"].ToString();
                Button btnOverrule = (Button)e.Item.FindControl("btnOverrule");
                btnOverrule.CommandArgument = ((DataRowView)e.Item.DataItem)["BookId"].ToString();
            }
        }

    }
}