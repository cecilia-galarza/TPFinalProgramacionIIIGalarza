<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SupervisorAsignacionTicket.aspx.cs" Inherits="VistaWeb.SupervisorAsignacionTicket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<!-- Bootstrap core JavaScript -->
	<script src="js/jquery.min.js"></script>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


	<table class="table">
		<thead class="thead-dark">
			<tr>
				<th scope="col">Nro Ticket</th>
				<th scope="col">Estado</th>
				<th scope="col">Cliente</th>
				<th scope="col">Tecnico Asignado</th>
				<th scope="col">Fecha Ingreso</th>
				<th scope="col">Producto</th>
				<th scope="col"></th>
			</tr>
		</thead>
		<tbody>
			<asp:Repeater runat="server" ID="repeaterSupervisor">
				<ItemTemplate>
					<tr>
						<th scope="row"><%#Eval("IdTicket") %></th>
						<td><%#Eval("Estado") %></td>
						<td><%#Eval("Cliente") %></td>
						<td><%#Eval("Tecnico") %></td>
						<td><%#Eval("FechaIngreso") %></td>
						<td><%#Eval("Producto") %></td>
						<td>
							<a href="SupervisorDetalle.aspx?id=<%#Eval("IdTicket") %> " class="btn btn-primary btn-user btn-block">Asignar</a>
						</td>
					</tr>
				</ItemTemplate>
			</asp:Repeater>
		</tbody>
	</table>

</asp:Content>
