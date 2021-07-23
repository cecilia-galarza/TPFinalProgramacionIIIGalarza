<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TicketDetalle.aspx.cs" Inherits="VistaWeb.TcketDetalle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <!-- Bootstrap core JavaScript -->
    <script src="js/jquery.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col p-2">
        <table class="table table-hover">
            <tbody>
                
                <tr>
                    <th scope="row">Producto</th>
                    <td colspan="2">
                        <asp:TextBox cssClass="form-control" ID="tbProducto" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Serie</th>
                    <td colspan="2">
                        <asp:TextBox cssClass="form-control" ID="tbserie" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Observaciones</th>
                    <td colspan="2">
                        <asp:TextBox runat="server" ID="tbObservaciones" CssClass="form-control" MaxLength="299" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Diagnostico</th>
                    <td colspan="2">
                        <asp:TextBox runat="server" ID="tbDiagnostico" CssClass="form-control" MaxLength="299" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Solucion</th>
                    <td colspan="2">
                        <asp:TextBox runat="server" ID="tbSolucion" CssClass="form-control" MaxLength="299" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Estado</th>
                    <td colspan="2">
                        <asp:TextBox runat="server" ID="tbEstado" CssClass="form-control" MaxLength="50" ReadOnly="True"></asp:TextBox>
                        </td>
                </tr>
            </tbody>
        </table>
        <div class="container">
            <div class="row">
                <div class="col text-center">
                   <a href="Default.aspx" class="btn btn-primary btn-user">Volver </a>
                </div> 
            </div>
        </div>
            </div>
</asp:Content>
