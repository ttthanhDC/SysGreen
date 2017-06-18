<%@ Page Title="Demo Page" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master"  CodeBehind="LogInPage.aspx.cs" Inherits="SYSGREEN.Demo" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style ="text-align:center;display: table;margin: 0 auto;">
                <div style ="height:50px"></div>
               
                     <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input id="user" type="text" class="form-control" name="User" placeholder="User">
                    </div>
                    <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                             <input id="password" type="password" class="form-control" name="password" placeholder="Password">
                    </div>
                    <br>
                    
                    <input type="submit" class="btn btn-info" value="Đăng nhập">
    </div>
    </asp:Content>


