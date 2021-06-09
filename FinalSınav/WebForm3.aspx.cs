using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace FinalSınav
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileStream aa = new FileStream(Server.MapPath("giris.txt"), FileMode.Append, FileAccess.Write);
            StreamWriter ss = new StreamWriter(aa);
            ss.Write(TextBox1 .Text + " " + TextBox2.Text );

            ss.Close();
            aa.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";
    
            lblmesaj.Text = "Kayıt Olundu";

            Button1.Enabled = false;
        }
    }
}