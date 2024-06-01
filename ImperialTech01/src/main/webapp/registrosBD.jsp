<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<title>Registros do BD</title>
<link href="./css/registros.css" rel="stylesheet">
</head>
<body>
	<header>
		<object data="./jsp/menu.jsp" width="100%" height="100px"></object>
	</header>
	
	<main id="container">
	<div class="item item1"></div>
	<div class="item item2">
	
	<div id="tabelaEstilo">
	<h1>REGISTROS DO BANCO DE DADOS (MYSQL)</h1>
	<%
	try {
		//Fazer a conexão com o Banco de Dados
		Connection conecta;
		PreparedStatement sql;
		Class.forName("com.mysql.cj.jdbc.Driver");
		conecta = DriverManager.getConnection("jdbc:mysql://localhost:3306/usuarios", "root", "");
		//Listar os dados da tabela produto do banco de dados 
		sql = conecta.prepareStatement("SELECT * FROM usuario");
		ResultSet resultado = sql.executeQuery();
	%>
	<table border="1">
	<thead>
		<tr>
			<th>Editar</th>
			<th>Excluir</th>
			<th>ID</th>
			<th>Nome</th>
			<th>CPF</th>
			<th>E-mail</th>
		</tr>
		</thead>
		<tbody>
		<%
		while (resultado.next()) {
		%>
		<tr>
			
			<td>
				<form action="editar" method="post">
					<input type="hidden" id="id" name="id" value="<%=resultado.getString("id")%>">
					<button type="submit"><img src="./img/Editar.png"></button>
				</form>
			</td>
			
			<td>
				<form action="excluir" method="post">
					<input type="hidden" name="id" value="<%=resultado.getString("id")%>">
					<button type="submit"><img src="./img/Deletar.png"></button>
				</form>
			</td>
			
			<td><%=resultado.getString("id")%></td>
			<td><%=resultado.getString("nome")%></td>
			<td><%=resultado.getString("cpf")%></td>
			<td><%=resultado.getString("email")%></td>
		</tr>
		<%
		}
		%>
		</tbody>
	</table>
	<%
	} catch (Exception x) {
	out.print("Mensagem de erro:" + x.getMessage());}
	
	%></div>
	
	</div>
	<div class="item item3"></div>
	</main>
</body>
</html>