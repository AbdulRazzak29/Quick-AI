<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Blog Section.aspx.cs" Inherits="Quick_AI_01.Blog_Section" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function downloadasTextFile(filename, text) {
            var element = document.createElement('a');
            element.setAttribute('href', 'data:text/plain;charset=utf-8,' + encodeURIComponent(text));
            element.setAttribute('download', filename);

            element.style.display = 'none';
            document.body.appendChild(element);

            element.click();

            document.body.removeChild(element);
        }

        // Start file download.
        document.getElementById("dwn-btn").addEventListener("click", function () {
            // Generate download of phpcodertech.txt file with some content
            var text = document.getElementById("text-val").value;
            var filename = "phpcodertech.txt";

            downloadasTextFile(filename, text);
        }, false);0
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <textarea id="text-val" rows="4">This is the content of my file</textarea><br/>
<input type="button" id="dwn-btn" value="Download dinamically generated text file"/>
        </div>
    </form>
</body>
</html>
