<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>✨ CloudDrop</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@500&family=Inter:wght@400;600&display=swap" rel="stylesheet">
    <style>
        .font-space { font-family: 'Space Grotesk', sans-serif; }
        .font-inter { font-family: 'Inter', sans-serif; }
        .drop-zone {
            border: 2px dashed #cbd5e1;
            transition: all 0.3s ease;
        }
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
            <div class="max-w-3xl mx-auto text-center">
                <asp:Label ID="lblTitle" runat="server" CssClass="text-4xl font-space font-bold text-[#2d3436] mb-3 block">Upload Files</asp:Label>
                <asp:Label ID="lblSubtitle" runat="server" CssClass="text-gray-600 mb-8 block">Drag files here to upload</asp:Label>
                
                <div class="drop-zone rounded-xl p-8 mb-6 cursor-pointer">
                    <div class="space-y-4">
                        <svg class="w-12 h-12 mx-auto text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 16a4 4 0 01-.88-7.903A5 5 0 1115.9 6L16 6a5 5 0 011 9.9M15 13l-3-3m0 0l-3 3m3-3v12"/>
                        </svg>
                        <asp:Label ID="lblDragDrop" runat="server" CssClass="text-gray-500 block">Drag and drop your files anywhere</asp:Label>
                        <asp:Label ID="lblOr" runat="server" CssClass="text-sm text-gray-400 block">or</asp:Label>
                        
                        <asp:FileUpload ID="fileUpload" runat="server" AllowMultiple="true" CssClass="hidden" />
                        <asp:Label AssociatedControlID="fileUpload" runat="server" 
                            CssClass="inline-block font-space px-6 py-2 bg-white text-black rounded-full shadow-lg cursor-pointer">
                            Browse Files
                        </asp:Label>
                    </div>
                </div>
                
                <div class="mt-12 border-t border-black-100 pt-8">
                    <asp:Button ID="btnUpload" runat="server" Text="Start Upload" 
                        CssClass="font-space px-8 py-3 bg-[#57a4ff] text-black rounded-full shadow-lg cursor-pointer" />
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