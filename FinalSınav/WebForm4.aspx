<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="FinalSınav.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
          <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 123px;
        }
        .auto-style3 {
            width: 123px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center><h1>HOŞGELDİNİZ</h1></center>
        </div>

        <table class="auto-style1">
             <tr>
                 <td class="auto-style2">
                     &nbsp;</td>
                 <td>
                     <asp:Label ID="Label1" runat="server" Text="Web sitemize hoşgeldiniz. Geri dönmek için geri dön tuşuna basınız."></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2">
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style2">
                     &nbsp;</td>
                 <td>
                     <asp:Button ID="Button1" runat="server"  Text="Geri Dön" Width="77px" PostBackUrl="~/WebForm1.aspx" />      
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      
                     </td>
                  <td>
                     
                 </td>
             </tr>
             
             <tr>
                 <td class="auto-style3">
                     </td>
                 <td class="auto-style4">
                     &nbsp;</td>
             </tr>
         </table>
    </form>
</body>
</html>
