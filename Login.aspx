<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BizdeVariz.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Giriş Yap</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Giriş Yap</h2>
            <asp:Label ID="lblKullaniciAdi" runat="server" Text="Kullanıcı Adı: "></asp:Label>
            <asp:TextBox ID="txtKullaniciAdi" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Label ID="lblSifre" runat="server" Text="Şifre: "></asp:Label>
            <asp:TextBox ID="txtSifre" runat="server" TextMode="Password"></asp:TextBox>
            <br /><br />
            <asp:Button ID="btnGirisYap" runat="server" Text="Giriş Yap" OnClick="btnGirisYap_Click" />
            <br /><br />
            <asp:Label ID="lblMesaj" runat="server" ForeColor="Red"></asp:Label>
        </div>
    </form>
</body>
</html>
