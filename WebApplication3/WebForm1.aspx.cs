using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con=new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

                protected void Insert(object sender, EventArgs e)
        {
            int tot;
            float avg1;
            SqlCommand cmd = new SqlCommand("Insert Into [stud] values(@sname,@regno,@m1,@m2,@tot,@avg)",con);
            cmd.Parameters.AddWithValue("@sname", TEXT1.Text);
            cmd.Parameters.AddWithValue("@regno", TEXT2.Text);
            cmd.Parameters.AddWithValue("@m1", TEXT3.Text);
            cmd.Parameters.AddWithValue("@m2", TEXT4.Text);
            tot = Convert.ToInt32(TEXT3.Text) + Convert.ToInt32(TEXT4.Text);
            avg1 = tot / 2;
            cmd.Parameters.AddWithValue("@tot", tot);
            cmd.Parameters.AddWithValue("@avg", avg1);
       cmd.ExecuteNonQuery();   
            con.Close();
            abc.DataBind();
            TEXT1.Text = " ";
            TEXT2.Text = "";
            TEXT3.Text = "";
            TEXT4.Text = "";
                }
    }
}