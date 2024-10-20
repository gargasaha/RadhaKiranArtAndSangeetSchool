using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace RadhaKiranArtAndSangeetSchool
{
    public partial class Login : System.Web.UI.Page
    {
        public SqlConnection conn;
        public SqlCommand cmd;
        public SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
           conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);
        }
        protected void login(object s, EventArgs e) {
            conn.Open();
            string usid = id.Text.ToString(), passwd = pass.Text.ToString();
            cmd = new SqlCommand("select count(*) from AdminTbl where UserId='" + usid + "' and PassWd='" + passwd + "'", conn);
            dr = cmd.ExecuteReader();
            int count = 0;
            while (dr.Read()) {
                count = Int32.Parse(dr[0].ToString());
            }
            if (count == 1){
                Response.Write("<script>alert('Logged in')</script>");
            }
            else {
                Response.Write("<script>alert('wrong Uid or pass')</script>");
            }
            dr.Close();
            conn.Close();
        }
    }
}