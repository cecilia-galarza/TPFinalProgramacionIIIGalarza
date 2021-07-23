<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClienteDetalle.aspx.cs" Inherits="VistaWeb.ClienteDetalle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <!-- Bootstrap core JavaScript -->
    <script src="js/jquery.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col p-2">
        <table class="table table-hover">
            <tbody>
                    <tr>
                    <th scope="row">Observaciones</th>
                    <td colspan="2">
                        <asp:TextBox runat="server" ID="tbObservaciones" CssClass="form-control" MaxLength="299" TextMode="MultiLine"></asp:TextBox>
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
               <%-- <tr>
                    <th scope="row">Estado</th>
                    <td colspan="2">
                        <asp:DropDownList cssClass="form-control" ID="ddlEstado" runat="server" AppendDataBoundItems ="true">
                        <asp:ListItem Text=""></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>--%>
            </tbody>
        </table>
        <div class="container">
            <div class="row">
                <div class="col text-center">
                    <class = "btn-toolbar"></class> <a href="Default.aspx" class="btn btn-primary btn-user">Volver </a>
                </div> 
            </div>
        </div>
    </div>
</asp:Content>
