using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.IO;

namespace FinalSınav
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileStream aa = new FileStream(Server.MapPath("kayit.txt"), FileMode.Append, FileAccess.Write);
            StreamWriter ss = new StreamWriter(aa);
            ss.WriteLine("Adınız: " + txtAdi.Text);
            ss.WriteLine("E-Mailiniz: " + txtMail.Text);
            ss.WriteLine("Telefon Numaranız: " + txtTel.Text);
            ss.WriteLine("Mesajınız: " + txtMesaj.Text);

            ss.Close();
            aa.Close();
            txtAdi.Text = "";
            txtMail.Text = "";
            txtTel.Text = "";
            txtMesaj.Text = "";
            kayit.Text = "Mesajınız Gönderildi.";
        }
    }
}