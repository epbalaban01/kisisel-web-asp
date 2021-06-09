using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace FinalSınav
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            lblmesaj.Text = "";
            if (TextBox1.Text == "")
            {
                lblad.Text = "Lütfen kullanıcı adını giriniz!!!";
            }
            else
            {
                lblad.Text = "";
            }
            if (TextBox2.Text == "")
            {
                lblsifre.Text = "Lütfen şifrenizi giriniz!!!";
            }
            else
            {
                lblsifre.Text = "";
            }

            FileStream fs = new FileStream(Server.MapPath("giris.txt"), FileMode.Open, FileAccess.Read);
            StreamReader sr = new StreamReader(fs);

            bool giris = false;

            while (sr.Peek() != -1)
            {

                string okunanbilgi = sr.ReadLine();
                int okunandeger = okunanbilgi.IndexOf(" ");
                string ad = okunanbilgi.Substring(0, okunandeger);


                if (TextBox1.Text == ad)
                {
                    string sifre = okunanbilgi.Substring(okunandeger + 1);

                    if (TextBox2.Text == sifre)
                    {
                        Session["admin"] = ad;
                        giris = true;
                        break;
                    }
                }
                else
                {
                    giris = false;
                }

            }

            if (giris)
            {

                sr.Close();
                fs.Close();
                Response.Redirect("WebForm4.aspx");
            }
            else
            {
                sr.Close();
                fs.Close();
                lblmesaj.Text = "Giriş başarısız oldu!!!";
            }

        }
    }
}