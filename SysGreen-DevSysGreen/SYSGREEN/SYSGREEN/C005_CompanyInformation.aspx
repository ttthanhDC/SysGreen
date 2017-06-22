<%@ Page Title="Demo Page" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master"  CodeBehind="C005_CompanyInformation.aspx.cs" Inherits="SYSGREEN.Demo" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div >
        <div style ="height:50px"></div>
            <div class="row">
                <div class="col-md-3">
                    Tên cty vi
                </div>
                <div class="col-md-3">
                    <textarea class="form-control" rows="1" id="CompanyName"></textarea>
                </div>
                <div class="col-md-3">
                    Logo
                </div>
                <div class="col-md-3">
                   <input type="text" class="form-control" id="CompanyLogo">
                </div>
            </div> 
         <div class="row">
                <div style ="height:10px"></div>
                <div class="col-md-3">
                    Tên viết tắt
                </div>
                <div class="col-md-3">
                    <textarea class="form-control" rows="1" id="CompanyAcronym"></textarea>
                </div>
                <div class="col-md-3">
                    Email
                </div>
                <div class="col-md-3">
                    <textarea class="form-control" rows="1" id="CompanyEmail"></textarea>
                </div>
          </div> 
         <div class="row">
                <div style ="height:10px"></div>
                <div class="col-md-3">
                    Tên tiếng anh
                </div>
                <div class="col-md-3">
                    <textarea class="form-control" rows="1" id="CompanyEnglish"></textarea>
                </div>
                <div class="col-md-3">
                    SĐT
                </div>
                <div class="col-md-3">
                    <input type="text" class="form-control" id="CompanyPhone">
                </div>
          </div> 
         <div class="row">
                <div style ="height:10px"></div>
                <div class="col-md-3">
                    Mã số thuế
                </div>
                <div class="col-md-3">
                 <input type="text" class="form-control" id="CompanyTax">
                </div>
                <div class="col-md-3">
                    Địa chỉ
                </div>
                <div class="col-md-3">
                    <textarea class="form-control" rows="1" id="CompanyAdress"></textarea>
                </div>
          </div> 
         <div class="row">
                <div style ="height:10px"></div>
                <div class="col-md-3">
                    Tài khoản ngân hàng
                </div>
                <div class="col-md-3">
                 <input type="text" class="form-control" id="BankAcount">
                </div>
                <div class="col-md-3">
                    Giá trị được freeship
                </div>
                <div class="col-md-3">
                    <input type="text" class="form-control" id="PriceFreeship">
                </div>
          </div> 
           <div class="row">
               <div class="col-md-12">
                   <div style ="height:40px"></div>
                   <div style ="text-align:center;display: table;margin: 0 auto;">
                       <input type="submit" class="btn btn-info" value="Lưu">
                   </div>
                </div>
           </div>
    </div>
    </asp:Content>


