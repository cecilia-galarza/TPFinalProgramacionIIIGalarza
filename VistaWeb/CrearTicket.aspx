<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearTicket.aspx.cs" Inherits="VistaWeb.CrearTicket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <!-- Bootstrap core JavaScript -->
    <script src="js/jquery.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<div class="col p-2">
        <asp:Label runat="server" ID="confirmacionEstado"></asp:Label>
        <table class="table table-hover">
                <tbody>
                <tr>
                    <th scope="row">Producto</th>
                    <td colspan="2">
                        <asp:DropDownList cssClass="form-control" ID="ddlProducto" runat="server" AppendDataBoundItems ="true">
                        </asp:DropDownList>
                    <td colspan="2"></td>
                </tr>
                     <tr>
                    <th scope="row">Serie</th>
                    <td colspan="2">
                        <asp:DropDownList cssClass="form-control" ID="ddlserie" runat="server" AppendDataBoundItems ="true">
                        </asp:DropDownList>
                    <td colspan="2"></td>
                </tr>
                <tr>
                    <th scope="row">Tipo de Servicio</th>
                    <td colspan="2">
                        <asp:DropDownList cssClass="form-control" ID="ddlServicio" runat="server" AppendDataBoundItems ="true">
                        </asp:DropDownList>
                        <td colspan="2"></td>
                   
                    <tr>
                    <th scope="row">Problema</th>
                    <td colspan="2">
                        <asp:TextBox runat="server" ID="tbProblema" CssClass="form-control" MaxLength="299" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td colspan="2">
                        <asp:RequiredFieldValidator runat="server" CssClass="text-danger" ErrorMessage="Colocar la falla" ControlToValidate="tbProblema"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                
            </tbody>
        </table>
       <div class="container">
  <div class="row">
    <div class="col text-center">
        
     <asp:Button runat="server" cssClass="btn btn-primary btn-user" Text="Crear" ID="btnCrear" OnClick="btnCrear_Click" /><class = "btn-toolbar"></class> <a href="default.aspx" class="btn btn-primary btn-user">Cancelar </a>
    </div> 
  </div>
</div>
        </div>
     
</asp:Content>
