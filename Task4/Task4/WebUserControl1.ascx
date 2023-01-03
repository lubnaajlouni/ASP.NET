<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="Task4.WebUserControl1" %>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<style>
        .big{
            width:100vw;
            height:100vh;
            display:flex;
            justify-content:center;
        }
        .smll{
            width:60%;
            display:flex;
            justify-content:space-between;
        }
        .left{
            float:left;
        }
        .bbo{
            font-size:22px;

        }
        #myProgress {
  width: 100%;
  background-color: #ddd;
}

#myBar {
  width: 1%;
  height: 30px;
  background-color: #04AA6D;
}

    </style>

<div class="big">

            <div class="SMll">
                <div class="left">
                    <br /><br /><br />
                   <asp:Label ID="Label1" runat="server" Text="How satisfied are you with the online valuation services?"></asp:Label>

            <br /><br /><br />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem value="100">excellent</asp:ListItem>
                 <asp:ListItem Value="75">Very well</asp:ListItem>
                 <asp:ListItem Value="50">good</asp:ListItem>
                 <asp:ListItem Value="25">week</asp:ListItem>
                 <asp:ListItem Value="0">poor</asp:ListItem>
            </asp:RadioButtonList>
                    <asp:Button ID="Button1" runat="server" Text="done" OnClick="Button1_Click" />

                    <br /><br />
                    <div id="bars" runat="server" >
                    <asp:Label ID="Label3" runat="server" ></asp:Label><br />
                    <div class="progress">
  <div class="progress-bar" runat="server" id="bar1" role="progressbar" style= aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">25%</div>
</div>
                   
                    <asp:Label ID="Label4" runat="server" ></asp:Label><br />
                    <div class="progress">
  <div class="progress-bar"  runat="server" id="bar2" role="progressbar" style= aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">25%</div>
</div>
                    <asp:Label ID="Label5" runat="server"></asp:Label><br />
                    <div class="progress">
  <div class="progress-bar"  runat="server" id="bar3" role="progressbar" style= aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">25%</div>
</div>
                    <asp:Label ID="Label6" runat="server" ></asp:Label><br />
                    <div class="progress">
  <div class="progress-bar"  runat="server" id="bar4" role="progressbar" style= aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">25%</div>
</div>
                    <asp:Label ID="Label7" runat="server" ></asp:Label><br />
                    <div class="progress">
  <div class="progress-bar" role="progressbar" id="bar5" runat="server" style= aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">25%</div>
</div>
  </div>
            <br />
            <br />
                </div>
                  

            </div>
        </div>