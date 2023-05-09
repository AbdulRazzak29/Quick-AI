<%@ Page Title="" Language="C#" MasterPageFile="~/AI.Master" AutoEventWireup="true" CodeBehind="Transactions.aspx.cs" Inherits="Quick_AI_01.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="titlebar">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>Transactions</h2>
                <!-- Breadcrumbs -->
                <nav id="breadcrumbs" class="dark">
                    <ul>
                        <li><a href="http://hype.sociusus.com/">Home</a></li>
                        <li>Transactions</li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</div>
   <div class="dashboard-box">
                        <!-- Headline -->
                        <div class="headline">
                            <h3> Transactions</h3>
                        </div>
                        <div class="content with-padding">
                            <div class="table-responsive">
                                <table id="js-table-list" class="basic-table dashboard-box-list">
                                    <tbody><tr>
                                        <th>Title</th>
                                        <th>Amount</th>
                                         <th>Premium</th>
                                         <th>Payment Method</th>
                                        <th> Date</th>
                                        <th> Status</th>
                                                                            </tr>
                                    <tr>
                                        <td colspan="6" class="text-center">No images found.</td>
                                        
                                                                            </tr>
                                   
                                </tbody></table>
                            </div>
                        </div>
                    </div>

    <br />
    <br />
   
</asp:Content>