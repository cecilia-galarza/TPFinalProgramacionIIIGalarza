<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tecnicodetalle.aspx.cs" Inherits="VistaWeb.Tecnicodetalle" %>
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
                    <th scope="row">Cliente</th>
                    <td colspan="2">
                        <asp:TextBox cssClass="form-control" ID="tbCliente" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Producto</th>
                    <td colspan="2">
                        <asp:TextBox cssClass="form-control" ID="tbProducto" runat="server" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <th scope="row">Serie</th>
                    <td colspan="2">
                        <asp:TextBox cssClass="form-control" ID="tbSerie" runat="server" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Problema</th>
                    <td colspan="2">
                        <asp:TextBox runat="server" ID="tbObservaciones" CssClass="form-control" MaxLength="299" TextMode="MultiLine" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Diagnostico</th>
                    <td colspan="2">
                        <asp:TextBox runat="server" ID="tbDiagnostico" CssClass="form-control" MaxLength="299" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Solucion</th>
                    <td colspan="2">
                        <asp:TextBox runat="server" ID="tbSolucion" CssClass="form-control" MaxLength="299" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Estado</th>
                    <td colspan="2">
                        <asp:DropDownList cssClass="form-control" ID="ddlEstado" runat="server" AppendDataBoundItems ="true">
                        </asp:DropDownList>
                    </td>
                </tr>
            </tbody>
        </table>
        <div class="container">
            <div class="row">
                <div class="col text-center">
                    <asp:Button runat="server" cssClass="btn btn-primary btn-user" Text="Guardar" ID="ButtonGuardar" OnClick="btnGuardar_Click" /><class = "btn-toolbar"></class> <a href="TecnicoDefault.aspx" class="btn btn-primary btn-user">Cancelar </a>
                </div> 
            </div>
        </div>
    </div>
</asp:Content>
