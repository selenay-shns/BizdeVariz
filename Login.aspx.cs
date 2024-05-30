using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BizdeVariz
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnGirisYap_Click(object sender, EventArgs e)
        {
            string kullaniciAdi = txtKullaniciAdi.Text;
            string sifre = txtSifre.Text;
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["BizdeVarizConnectionString"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT COUNT(1) FROM UsersTable WHERE user_nick=@Username AND user_pass=@Password";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Username", kullaniciAdi);
                cmd.Parameters.AddWithValue("@Password", sifre);

                conn.Open();
                int count = Convert.ToInt32(cmd.ExecuteScalar());
                conn.Close();

                if (count == 1)
                {
                    FormsAuthentication.RedirectFromLoginPage(kullaniciAdi, false);
                    Response.Redirect("index.html");
                }
                else
                {
                    lblMesaj.Text = "Geçersiz kullanıcı adı veya şifre.";
                }
            }
        }
    }
}