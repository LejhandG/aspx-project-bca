<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>✨ CloudDrop - Contact Us</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@500&family=Inter:wght@400;600&display=swap" rel="stylesheet">
    <style>
        .font-space { font-family: 'Space Grotesk', sans-serif; }
        .font-inter { font-family: 'Inter', sans-serif; }
    </style>
</head>
<body class="bg-[#fafafa] font-inter">
    <form id="form1" runat="server">
        <div class="sticky top-0 backdrop-blur-lg bg-white/80 z-50 border-b border-gray-100">
    <div class="container mx-auto px-6 py-4">
        <div class="flex items-center justify-between">
            <div class="flex items-center space-x-3">
                <asp:Image ID="imgLogo" runat="server" ImageUrl="https://i.ibb.co/hRwvbfkr/upload.png" CssClass="w-8 h-8" AlternateText="logo"/>
                <asp:Label ID="lblLogoText" runat="server" CssClass="text-2xl font-space font-bold text-[#2d3436]">CloudDrop</asp:Label>
            </div>
            <div class="flex items-center space-x-8">
                <asp:HyperLink ID="lnkHome" runat="server" NavigateUrl="/Home.aspx" 
                    CssClass="text-gray-600 font-medium text-sm">Home</asp:HyperLink>
                <asp:HyperLink ID="lnkAbout" runat="server" NavigateUrl="/About.aspx" 
                    CssClass="text-gray-600 font-medium text-sm">About</asp:HyperLink>
                <asp:HyperLink ID="lnkContact" runat="server" NavigateUrl="/ContactUs.aspx" 
                    CssClass="text-gray-600 font-medium text-sm">Contact</asp:HyperLink>
                <asp:HyperLink ID="lnkFetch" runat="server" NavigateUrl="/Fetch.aspx" 
                    CssClass="text-gray-600 font-medium text-sm">Fetch</asp:HyperLink>
                <asp:HyperLink ID="lnkRegisterLogin" runat="server" NavigateUrl="/RegisterLogin.aspx" 
                    CssClass="text-gray-600 font-medium text-sm">Sign In</asp:HyperLink>
                <asp:HyperLink ID="lnkUpload" runat="server" NavigateUrl="/Upload.aspx" 
                    CssClass="text-black px-6 py-2 rounded-full font-space shadow-lg">Upload</asp:HyperLink>
            </div>
        </div>
    </div>
</div>

        <main class="container mx-auto px-6 py-12">
            <div class="max-w-3xl mx-auto">
                <div class="text-center mb-12">
                    <asp:Label ID="lblTitle" runat="server" CssClass="text-4xl font-space font-bold text-[#2d3436] block">Contact Us</asp:Label>
                    <asp:Label ID="lblSubtitle" runat="server" CssClass="text-gray-600 mt-2 block">We'd love to hear from you</asp:Label>
                </div>

                <div class="grid md:grid-cols-2 gap-12">
                    <div class="bg-white p-8 rounded-xl shadow-md">
                        <div class="space-y-4">
                            <div>
                                <asp:Label CssClass="text-sm text-gray-600 block mb-2" runat="server">Name</asp:Label>
                                <asp:TextBox ID="txtName" runat="server" 
                                    CssClass="w-full px-4 py-2 border border-gray-200 rounded-lg focus:ring-2 focus:ring-[#57a4ff] outline-none"></asp:TextBox>
                            </div>
                            <div>
                                <asp:Label CssClass="text-sm text-gray-600 block mb-2" runat="server">Email</asp:Label>
                                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" 
                                    CssClass="w-full px-4 py-2 border border-gray-200 rounded-lg focus:ring-2 focus:ring-[#57a4ff] outline-none"></asp:TextBox>
                            </div>
                            <div>
                                <asp:Label CssClass="text-sm text-gray-600 block mb-2" runat="server">Message</asp:Label>
                                <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="4" 
                                    CssClass="w-full px-4 py-2 border border-gray-200 rounded-lg focus:ring-2 focus:ring-[#57a4ff] outline-none"></asp:TextBox>
                            </div>
                            <asp:Button ID="btnSubmit" runat="server" Text="Send Message" 
                                CssClass="font-space px-6 py-3 bg-[#57a4ff] text-black rounded-lg shadow-lg w-full" />
                        </div>
                    </div>

                    <div class="space-y-6">
                        <div class="bg-white p-8 rounded-xl shadow-md">
                            <h3 class="font-space text-xl font-bold mb-4">Contact Information</h3>
                            <div class="space-y-2 text-gray-600">
                                <p>📧 contact@clouddrop.com</p>
                                <p>📍 Vidyavihar, Mumbai</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <div class="bg-white border-t border-gray-100 mt-20">
    <div class="container mx-auto px-6 py-8">
        <div class="flex flex-col md:flex-row items-center justify-between">
            <div class="text-gray-500 text-sm mb-4 md:mb-0 font-inter">
                &copy; <%= DateTime.Now.Year %> CloudDrop. All rights reserved.
            </div>
            <div class="flex space-x-6">
                <asp:HyperLink ID="lnkFooterHome" runat="server" NavigateUrl="/Home.aspx" 
                    CssClass="text-gray-600 hover:text-[#2d3436] text-sm">Home</asp:HyperLink>
                <asp:HyperLink ID="lnkFooterAbout" runat="server" NavigateUrl="/About.aspx" 
                    CssClass="text-gray-600 hover:text-[#2d3436] text-sm">About</asp:HyperLink>
                <asp:HyperLink ID="lnkFooterContact" runat="server" NavigateUrl="/ContactUs.aspx" 
                    CssClass="text-gray-600 hover:text-[#2d3436] text-sm">Contact</asp:HyperLink>
                <asp:HyperLink ID="lnkFooterUpload" runat="server" NavigateUrl="/Upload.aspx" 
                    CssClass="text-gray-600 hover:text-[#2d3436] text-sm">Upload</asp:HyperLink>
            </div>
        </div>
    </div>
</div>
    </form>
</body>
</html>