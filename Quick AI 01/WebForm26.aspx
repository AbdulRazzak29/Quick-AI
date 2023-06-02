<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="WebForm26.aspx.cs" Inherits="Quick_AI_01.WebForm26" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
        const url = 'https://contextualwebsearch-websearch-v1.p.rapidapi.com/api/Search/ImageSearchAPI?q=taylor%20swift&pageNumber=1&pageSize=10&autoCorrect=true';
        const options = {
            method: 'GET',
            headers: {
                'X-RapidAPI-Key': 'ed835892f2mshc0aa13f0589004ap1b4c48jsn1b4d77744b69',
                'X-RapidAPI-Host': 'contextualwebsearch-websearch-v1.p.rapidapi.com'
            }
        };

        try {
            const response = await fetch(url, options);
            const result = await response.text();
            console.log(result);
        } catch (error) {
            console.error(error);
        }
    </script>
</asp:Content>
