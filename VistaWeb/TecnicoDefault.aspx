<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TecnicoDefault.aspx.cs" Inherits="VistaWeb.TecnicoDefault" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <!-- Bootstrap core JavaScript -->
    <script src="js/jquery.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <table class="table">
        <thead class="thead-dark">
            <tr>
                <th scope="col">Nro Ticket</th>
                <th scope="col">Estado</th>
                <th scope="col">Cliente</th>
                <th scope="col">Fecha Ingreso</th>
                <th scope="col">Producto</th>
                <th scope="col"></th>
                
               
            </tr>
        </thead>
        <tbody>
            <%%>
            <%foreach (var item in listado)
                {%>
            <tr>
                <th scope="row"><% = item.IdTicket %> </th>
                <td><% = (item.Estado) %></td>
                <td><% = (item.Cliente) %></td>
                <td><% = (item.FechaIngreso) %></td>
                <td><% = (item.Producto) %></td>
                                
                <td>
                    <a href="TecnicoDetalle.aspx?id=<% = item.IdTicket %> " class="btn btn-primary btn-user btn-block">Ver </a>
                </td>
            </tr>
            <%}%>
        </tbody>
    </table>
</asp:Content>
