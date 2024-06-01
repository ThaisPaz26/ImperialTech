<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>Cadastro Usuário</title>
<link href="./css/cadastro.css" rel="stylesheet">
</head>
<body>
	<header>
		<object data="./jsp/menu.jsp" width="100%" height="100px"></object>
	</header>
	<div id="container">
		<div class="item item1"></div>
		<div class="item item2">

			<div id="estiloForm">
				<h1>Cadastro de Usuário</h1>

				<form action="entrada" method="post">
					
					<div class="estiloInput">
						<label for="nome">Nome</label>
						<input type="text" name="nome" id="nome" class="input">
					</div>
					
					<div class="estiloInput">
						<label for="cpf">CPF...</label>
						<input type="text" name="cpf" id="cpf" class="input" >
					</div>
					
					<div class="estiloInput">
						<label for="email">E-mail</label>
						<input type="text" name="email" id="email" class="input" >
					</div>
					
					<div class="estiloInput">
						<label for="senha">Senha</label>
						<input type="password" name="senha" id="senha" class="input">
					</div>
					
					<div class="estiloInput">
						<input type="submit" value="CADASTRAR" class="estiloBotao"> 
						<a href="./registrosBD.jsp"><button type="button" value="REGISTROS" class="estiloBotao">REGISTROS BD</button></a>
						<input type="reset" value="RESETAR" class="estiloBotao"> 
					</div>
				</form>					
			</div>
		</div>
		<div class="item item3"></div>
	</div>
	<script type="text/javascript" src="./programa.js"></script>
</body>
</html>