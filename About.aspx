<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>✨ CloudDrop - About Us</title>
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
                        <asp:HyperLink ID="lnkUpload" runat="server" NavigateUrl="/Upload.aspx" 
                            CssClass="text-black px-6 py-2 rounded-full font-space shadow-lg">Upload</asp:HyperLink>
                    </div>
                </div>
            </div>
        </div>
        <main class="container mx-auto px-6 py-12">
            <div class="max-w-3xl mx-auto text-center">
                <asp:Label ID="lblTitle" runat="server" CssClass="text-4xl font-space font-bold text-[#2d3436] mb-6 block">About Us</asp:Label>
                <asp:Label ID="lblDescription" runat="server" CssClass="text-gray-600 mb-8 block">
                    At CloudDrop, we believe in making file sharing simple, secure, and efficient. 
                    Our platform is designed to help you upload, store, and share files with ease. 
                    Whether you're an individual or a team, we've got you covered.
                </asp:Label>


                <asp:Label ID="lblTeamTitle" runat="server" CssClass="text-3xl font-space font-bold text-[#2d3436] mb-6 block">Our Team</asp:Label>
                <div class="grid grid-cols-1 md:grid-cols-2 gap-6">

                    <div class="bg-white p-6 rounded-xl shadow-md">
                        <asp:Image ID="imgMember1" runat="server" ImageUrl="https://i.ibb.co/pjsB2nmh/post3asd.jpg" 
                            CssClass="w-24 h-24 mx-auto rounded-full mb-4" AlternateText="Team Member 1"/>
                        <asp:Label ID="lblMember1Name" runat="server" CssClass="text-xl font-space font-bold text-[#2d3436] block">Dhruv Bhanushali</asp:Label>
                    </div>


                    <div class="bg-white p-6 rounded-xl shadow-md">
                        <asp:Image ID="imgMember2" runat="server" ImageUrl="https://i.ibb.co/5xXpY8r9/IMG-6218-compressed-Priyanshu-Lahiri-1.png" 
                            CssClass="w-24 h-24 mx-auto rounded-full mb-4" AlternateText="Team Member 2"/>
                        <asp:Label ID="lblMember2Name" runat="server" CssClass="text-xl font-space font-bold text-[#2d3436] block">Priyanshu Lahiri</asp:Label>
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
                <asp:HyperLink 
                    ID="lnkFooterHome" 
                    runat="server" 
                    NavigateUrl="/Home.aspx" 
                    CssClass="text-gray-600 hover:text-[#2d3436] text-sm">
                    Home
                </asp:HyperLink>
                
                <asp:HyperLink 
                    ID="lnkFooterAbout" 
                    runat="server" 
                    NavigateUrl="/About.aspx" 
                    CssClass="text-gray-600 hover:text-[#2d3436] text-sm">
                    About
                </asp:HyperLink>
                
                <asp:HyperLink 
                    ID="lnkFooterUpload" 
                    runat="server" 
                    NavigateUrl="/Upload.aspx" 
                    CssClass="text-gray-600 hover:text-[#2d3436] text-sm">
                    Upload
                </asp:HyperLink>
            </div>
        </div>
    </div>
</div>
    </form>
</body>
</html>
