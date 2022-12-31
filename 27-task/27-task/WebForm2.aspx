<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1practic.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="vh-100 gradient-custom">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card bg-dark text-white" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">

            <div class="mb-md-5 mt-md-4 pb-5">

              <h2 class="fw-bold mb-2 text-uppercase">sign up</h2>
              

              <div class="form-outline form-white mb-4">
                <label class="form-label" for="typeEmailX">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email &nbsp;</label>&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="invalid email" ControlToValidate="textemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" ValidationGroup="g1">*</asp:RegularExpressionValidator>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="textemail" ErrorMessage="is required" ForeColor="Red" ValidationGroup="g1">*</asp:RequiredFieldValidator>
                  <input type="email" id="textemail" runat="server" class="form-control form-control-lg" />
               
              </div>

              <div class="form-outline form-white mb-4">
                <label class="form-label" for="typePasswordX">Password&nbsp;&nbsp;&nbsp; 
                  </label>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="is required" ControlToValidate="textpass1" ForeColor="Red" ValidationGroup="g1">*</asp:RequiredFieldValidator>
                  <input type="password" id="textpass1"  runat="server" class="form-control form-control-lg" />
              </div>

                 <div class="form-outline form-white mb-4">
                <label class="form-label" for="typePasswordX">re-Password&nbsp;&nbsp;&nbsp; 
                     </label>
                &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="textpass1" ControlToValidate="textpass2" ErrorMessage="no match" ForeColor="Red" ValidationGroup="g1">*</asp:CompareValidator>
                     <input type="password" id="textpass2"  runat="server" class="form-control form-control-lg" />
              </div>

                <asp:Button class="btn btn-outline-light btn-lg px-5" ID="Button1" runat="server" Text="sign up" ValidationGroup="g1" OnClick="Button1_Click" />

             <%-- <button class="btn btn-outline-light btn-lg px-5" type="submit">sign up</button>--%>

              <div class="d-flex justify-content-center text-center mt-4 pt-1">
                  <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="g1" />
                <a href="#!" class="text-white"><i class="fab fa-facebook-f fa-lg"></i></a>
                <a href="#!" class="text-white"><i class="fab fa-twitter fa-lg mx-4 px-2"></i></a>
                  <i class="fab fa-google fa-lg"></i>
              </div>

            </div>


          </div>
        </div>
      </div>
    </div>
  </div>
</section> <br />
    <section class="vh-100 gradient-custom">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card bg-dark text-white" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">

            <div class="mb-md-5 mt-md-4 pb-5">

              <h2 class="fw-bold mb-2 text-uppercase">Login</h2>
              <p class="text-white-50 mb-5">Please enter your login and password!</p>

              <div class="form-outline form-white mb-4">
                <label class="form-label" for="typeEmailX">Email</label>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="is required" ForeColor="Red" ControlToValidate="email" ValidationGroup="g2">*</asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="email" ErrorMessage="invalid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="g2">*</asp:RegularExpressionValidator>
                  <input type="email" id="email" runat="server" class="form-control form-control-lg" />
              
              </div>

              <div class="form-outline form-white mb-4">
                <label class="form-label" for="typePasswordX">Password<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="is reqired" ControlToValidate="pass" ForeColor="Red" ValidationGroup="g2">*</asp:RequiredFieldValidator>
                  </label>
&nbsp;<input type="password" id="pass" runat="server" class="form-control form-control-lg" />
               
              </div>

             
                <asp:Button ID="Button2" class="btn btn-outline-light btn-lg px-5" runat="server" Text="login" ValidationGroup="g2" />
              <%--<button class="btn btn-outline-light btn-lg px-5" type="submit">Login</button>--%>

              <div class="d-flex justify-content-center text-center mt-4 pt-1">
                  <asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="Red" ValidationGroup="g2" />
                <a href="#!" class="text-white"><i class="fab fa-facebook-f fa-lg"></i></a>
                <a href="#!" class="text-white"><i class="fab fa-twitter fa-lg mx-4 px-2"></i></a>
                <a href="#!" class="text-white"><i class="fab fa-google fa-lg"></i></a>
              </div>

            </div>

            <div>
              
            </div>

          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</asp:Content>
