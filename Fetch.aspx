<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Fetch.aspx.cs" Inherits="lol.Default" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>✨ CloudDrop - File Viewer</title>
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
                        <img src="https://i.ibb.co/hRwvbfkr/upload.png" class="w-8 h-8" alt="logo"/>
                        <span class="text-2xl font-space font-bold text-[#2d3436]">CloudDrop</span>
                    </div>
                    <div class="flex items-center space-x-8">
                        <asp:HyperLink runat="server" NavigateUrl="/Home.aspx" CssClass="text-gray-600 font-medium text-sm">Home</asp:HyperLink>
                        <asp:HyperLink runat="server" NavigateUrl="/About.aspx" CssClass="text-gray-600 font-medium text-sm">About</asp:HyperLink>
                        <asp:HyperLink runat="server" NavigateUrl="/ContactUs.aspx" CssClass="text-gray-600 font-medium text-sm">Contact</asp:HyperLink>
                        <asp:HyperLink runat="server" NavigateUrl="/Fetch.aspx" CssClass="text-gray-600 font-medium text-sm">Fetch</asp:HyperLink>
                        <asp:HyperLink ID="lnkRegisterLogin" runat="server" NavigateUrl="/RegisterLogin.aspx" 
        CssClass="text-gray-600 font-medium text-sm" Visible="true">Sign In</asp:HyperLink>
    <asp:LinkButton ID="lnkLogout" runat="server" 
        CssClass="text-gray-600 font-medium text-sm hover:text-red-600"
        Visible="false"
        OnClick="lnkLogout_Click">
        Logout
    </asp:LinkButton>
                        <asp:HyperLink runat="server" NavigateUrl="/Upload.aspx" CssClass="text-black px-6 py-2 rounded-full font-space shadow-lg">Upload</asp:HyperLink>
                    </div>
                </div>
            </div>
        </div>
        <main class="container mx-auto px-6 py-12">
            <div class="max-w-4xl mx-auto">
                <h1 class="text-4xl font-space font-bold text-[#2d3436] mb-8 text-center">File Filter and Viewer</h1>
                
                <div class="bg-white p-8 rounded-xl shadow-md">
                    <div class="flex items-center justify-between mb-6">
                        <div class="flex items-center space-x-4">
                            <asp:Button ID="btnLoadFiles" runat="server" Text="Load Files" 
                                OnClick="btnLoadFiles_Click"
                                CssClass="font-space px-6 py-2 bg-[#57a4ff] text-black rounded-full shadow-lg cursor-pointer" />
                            
                            <div class="flex items-center space-x-2">
                                <asp:Label ID="lblFileType" runat="server" Text="Filter by File Type:" 
                                    CssClass="text-sm text-gray-600"></asp:Label>
                                <asp:DropDownList ID="ddlFileTypes" runat="server" AutoPostBack="true" 
                                    OnSelectedIndexChanged="ddlFileTypes_SelectedIndexChanged"
                                    CssClass="px-4 py-2 border border-gray-200 rounded-lg focus:ring-2 focus:ring-[#57a4ff] outline-none">
                                    <asp:ListItem Text="Select" Value="." />
                                    <asp:ListItem Text="Text Files" Value=".txt" />
                                    <asp:ListItem Text="PDF Files" Value=".pdf" />
                                    <asp:ListItem Text="Image Files" Value=".jpg;.png;*.gif" />
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>

                    <asp:GridView ID="gvFiles" runat="server" AutoGenerateColumns="false" 
                        OnRowCommand="gvFiles_RowCommand"
                        CssClass="w-full border-collapse"
                        HeaderStyle-CssClass="bg-gray-50 text-left"
                        RowStyle-CssClass="border-t border-gray-100">
                        <Columns>
                            <asp:BoundField DataField="FileName" HeaderText="File Name" 
                                ItemStyle-CssClass="py-4 px-4 text-gray-600" 
                                HeaderStyle-CssClass="py-4 px-4 text-sm font-medium text-gray-500" />
                            <asp:BoundField DataField="FileType" HeaderText="File Type" 
                                ItemStyle-CssClass="py-4 px-4 text-gray-600" 
                                HeaderStyle-CssClass="py-4 px-4 text-sm font-medium text-gray-500" />
                            <asp:TemplateField HeaderText="Action" 
                                HeaderStyle-CssClass="py-4 px-4 text-sm font-medium text-gray-500">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkOpen" runat="server" 
                                        CommandName="OpenFile" 
                                        CommandArgument='<%# Eval("FilePath") %>' 
                                        Text="Download"
                                        CssClass="text-[#57a4ff] hover:underline px-4 py-4 inline-block" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
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
                        <asp:HyperLink runat="server" NavigateUrl="/Home.aspx" CssClass="text-gray-600 hover:text-[#2d3436] text-sm">Home</asp:HyperLink>
                        <asp:HyperLink runat="server" NavigateUrl="/About.aspx" CssClass="text-gray-600 hover:text-[#2d3436] text-sm">About</asp:HyperLink>
                        <asp:HyperLink runat="server" NavigateUrl="/ContactUs.aspx" CssClass="text-gray-600 hover:text-[#2d3436] text-sm">Contact</asp:HyperLink>
                        <asp:HyperLink runat="server" NavigateUrl="/Fetch.aspx" CssClass="text-gray-600 hover:text-[#2d3436] text-sm">Fetch</asp:HyperLink>
                        <asp:HyperLink runat="server" NavigateUrl="/Upload.aspx" CssClass="text-gray-600 hover:text-[#2d3436] text-sm">Upload</asp:HyperLink>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>