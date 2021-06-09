<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="FinalSınav.WebForm2" %>

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
                     <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;KULLANICI GİRİŞİ</h1>
        </div>
         <table class="auto-style1">
             <tr>
                 <td class="auto-style2">
                     <asp:Label ID="Label1" runat="server" Text="Kullanıcı Adı:"></asp:Label>
                 </td>
                 <td>
                     <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                 &nbsp;<asp:Label ID="lblad" runat="server"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2">
                     <asp:Label ID="Label2" runat="server" Text="Şifre:"></asp:Label>
                 </td>
                 <td>
                     <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                     <asp:Label ID="lblsifre" runat="server"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2">
                     &nbsp;</td>
                 <td>
                     <asp:Button ID="Button1" runat="server"  Text="Giriş" Width="77px" OnClick="Button1_Click" />      
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      
                     <asp:Button ID="Button2" runat="server"  Text="Kayıt Ol" Width="77px" PostBackUrl="~/WebForm3.aspx" />
                 </td>
                  <td>
                     
                 </td>
             </tr>
             
             <tr>
                 <td class="auto-style3">
                     </td>
                 <td class="auto-style4">
                     <asp:Label ID="lblmesaj" runat="server" ForeColor="Red"></asp:Label>
                 </td>
             </tr>
         </table>
    </form>
</body>
</html>
