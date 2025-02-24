<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegisterLogin.aspx.cs" Inherits="RegisterLogin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>✨ CloudDrop - Sign In/Up</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@500&family=Inter:wght@400;600&display=swap" rel="stylesheet">
    <style>
        .font-space { font-family: 'Space Grotesk', sans-serif; }
        .font-inter { font-family: 'Inter', sans-serif; }
    </style>
</head>
<body class="bg-[#fafafa] font-inter">
    <form id="form1" runat="server">
        <!-- Original Navbar -->
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
                        <asp:LinkButton ID="lnkAuth" runat="server" OnClick="lnkAuth_Click" 
                            CssClass="text-gray-600 font-medium text-sm">Sign In</asp:LinkButton>
                        <asp:HyperLink ID="lnkUpload" runat="server" NavigateUrl="/Upload.aspx" 
                            CssClass="text-black px-6 py-2 rounded-full font-space shadow-lg">Upload</asp:HyperLink>
                    </div>
                </div>
            </div>
        </div>

        <main class="container mx-auto px-6 py-12">
            <div class="max-w-md mx-auto bg-white p-8 rounded-xl shadow-md">
                <div class="flex gap-4 mb-8">
                    <asp:Button ID="btnLoginTab" runat="server" Text="Sign In" 
                        CssClass="flex-1 font-space py-2 rounded-lg bg-[#57a4ff] text-black" OnClick="btnLoginTab_Click"/>
                    <asp:Button ID="btnRegisterTab" runat="server" Text="Sign Up" 
                        CssClass="flex-1 font-space py-2 rounded-lg bg-[#f0f0f0] text-gray-500" OnClick="btnRegisterTab_Click"/>
                </div>

                <div id="loginForm" runat="server">
                    <div class="space-y-4">
                        <div>
                            <asp:TextBox ID="txtEmail" runat="server" 
                                CssClass="w-full px-4 py-2 border border-gray-200 rounded-lg focus:ring-2 focus:ring-[#57a4ff] outline-none" 
                                placeholder="Email"></asp:TextBox>
                        </div>
                        <div>
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" 
                                CssClass="w-full px-4 py-2 border border-gray-200 rounded-lg focus:ring-2 focus:ring-[#57a4ff] outline-none" 
                                placeholder="Password"></asp:TextBox>
                        </div>
                        <asp:Button ID="btnSubmit" runat="server" Text="Sign In" 
                            CssClass="w-full font-space px-6 py-3 bg-[#57a4ff] text-black rounded-lg shadow-lg mt-4"
                            OnClick="btnSubmit_Click"/>
                    </div>
                </div>

                <div id="registerForm" runat="server" visible="false">
                    <div class="space-y-4">
                        <div>
                            <asp:TextBox ID="txtRegEmail" runat="server" 
                                CssClass="w-full px-4 py-2 border border-gray-200 rounded-lg focus:ring-2 focus:ring-[#57a4ff] outline-none" 
                                placeholder="Email"></asp:TextBox>
                        </div>
                        <div>
                            <asp:TextBox ID="txtRegPassword" runat="server" TextMode="Password" 
                                CssClass="w-full px-4 py-2 border border-gray-200 rounded-lg focus:ring-2 focus:ring-[#57a4ff] outline-none" 
                                placeholder="Password"></asp:TextBox>
                        </div>
                        <asp:Button ID="btnRegister" runat="server" Text="Sign Up" 
                            CssClass="w-full font-space px-6 py-3 bg-[#57a4ff] text-black rounded-lg shadow-lg mt-4"
                            OnClick="btnRegister_Click"/>
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
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>