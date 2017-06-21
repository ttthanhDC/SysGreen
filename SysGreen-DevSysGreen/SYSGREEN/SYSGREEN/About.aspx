<%@ Page Title="About" Language="C#" MasterPageFile="~/Menu.master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="SYSGREEN.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script>
        var formData = new FormData();
        formData.append('type', 'insert');
        formData.append('data', "{Dept_Name:'abc',Dept_Description:'mieuta','Create_User':'thanhdc7'}");
        $.ajax({
            url: "HandlerDeptObject.ashx",
            type: "POST",
            data: formData,
            contentType: false,
            processData: false,
            success: function (result) {
                alert(result);
            },
            error: function (err) {
                
            }
        });
    
    </script>
</asp:Content>
