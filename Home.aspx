<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CloudDrop</title>
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

        <div class="container mx-auto px-6 py-20">
            <div class="flex flex-col items-center text-center">
                <div class="max-w-3xl p-1 rounded-2xl mb-8">
                    <asp:Image ID="imgMain" runat="server" 
                        ImageUrl="https://i.ibb.co/rKcCgk3T/Untitled-design-13.png" 
                        CssClass="rounded-2xl w-full h-96 object-cover shadow-2xl"/>
                </div>
                
                <asp:Label ID="lblTitle" runat="server" 
                    CssClass="text-5xl font-space font-bold mb-6 block">
                    Simple File Hosting
                </asp:Label>
                
                <asp:Label ID="lblDescription" runat="server" 
                    CssClass="text-xl text-gray-600 mb-8 max-w-2xl leading-relaxed block">
                    Upload files securely and store it locally!
                </asp:Label>
                
                <asp:HyperLink ID="lnkGetStarted" runat="server" NavigateUrl="/Upload.aspx"
                    CssClass="text-black px-8 py-3 rounded-full font-space text-lg shadow-lg flex items-center gap-2">
                    Get Started
                </asp:HyperLink>
            </div>
        </div>
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