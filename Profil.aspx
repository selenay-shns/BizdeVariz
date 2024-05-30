<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profil.aspx.cs" Inherits="BizdeVariz.Profil" %>

<!DOCTYPE html>
<html lang="tr">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Profil Sayfası</title>
    <!-- Bootstrap CDN bağlantısı -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .profile-container {
            max-width: 60%;
            margin: 50px auto;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            flex-direction: column;
        }

        .profile-header {
            margin-bottom: 20px;
        }

        .profile-header img {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            margin-bottom: 20px;
            border: 3px solid #3498db;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        .profile-header h1 {
            margin: 0;
            color: #333;
            font-size: 24px;
        }

        .profile-header p {
            margin: 5px 0;
            color: #666;
            font-size: 16px;
        }

        .profile-info,
        .profile-about {
            width: 100%;
            margin-top: 20px;
            background-color: #f9f9f9;
            padding: 15px;
            border-radius: 8px;
        }

        .profile-info h2,
        .profile-about h2 {
            color: #333;
            font-size: 20px;
            margin-bottom: 10px;
        }

        .profile-info ul {
            list-style-type: none;
            padding: 0;
        }

        .profile-info ul li {
            margin-bottom: 10px;
            color: #666;
            font-size: 16px;
        }

        .profile-about p {
            color: #666;
            font-size: 16px;
        }
        .vitrin {
            display: flex;
            justify-content: space-around;
            margin-top: 50px;
        }

        .vitrin-item {
            flex: 1;
            background-color: #fff;
            border-radius: 10px;
            padding: 20px;
            margin: 0 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .vitrin-item img {
            max-width: 100%;
            border-radius: 8px;
            margin-bottom: 20px;
        }

        .vitrin-item h3 {
            color: #333;
            font-size: 20px;
            margin-bottom: 10px;
        }

        .vitrin-item p {
            color: #666;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <a href="index.html">PROFİL</a>

   <form id="form1" runat="server">

      <asp:LinkButton ID="LinkButton1" runat="server" OnClick="btnLogout_Click">Çıkış Yap</asp:LinkButton>

    <div class="profile-container">
        <div class="profile-header">
            <asp:Image ID="imgProfil" runat="server" CssClass="profile-img" ImageUrl='<%# GetProfileImage() %>' AlternateText="Profil Resmi" />
            <p>
                <asp:Literal ID="litIsim" runat="server"></asp:Literal>
                <asp:Literal ID="litSoyisim" runat="server"></asp:Literal>
            </p>
        </div>
        <div class="profile-info">
            <h2>İletişim Bilgileri</h2>
            <ul>
                <li><strong>Telefon:</strong> <asp:Literal ID="litTelefon" runat="server"></asp:Literal></li>
                <li><strong>Adres:</strong> <asp:Literal ID="litAdres" runat="server"></asp:Literal></li>
            </ul>
        </div>
        <div class="profile-about">
            <h2>Hakkımda</h2>
            <p><asp:Literal ID="litHakkimda" runat="server"></asp:Literal></p>
        </div>
    </div>

    <!-- Vitrin -->
    <asp:Panel ID="vitrin" runat="server" CssClass="vitrin">
        
    </asp:Panel>
</form>
    <!-- Bootstrap JS dosyalarını ekleyin -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


</body>

</html>
