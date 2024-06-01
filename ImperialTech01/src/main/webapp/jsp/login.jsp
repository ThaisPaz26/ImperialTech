<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-be">
<head>
<meta charset="UTF-8">
<title>Área de Login</title>
<link href="../css/login.css" rel="stylesheet">
</head>
<body>
	<header>
		<object data="./menu.jsp" width="100%" height="100px"></object>
	</header>

	<main>

		<div id="mainLogin">
			<div id="pacienteLogin">
				<h2>Paciente</h2>
				<p>Para entrar como PACIENTE, clique no botão abaixo</p>
				<img src="../img/pacienteIcon.png"> 
				<div class="buttonCenter">
					<a href="./loginpaciente.jsp" target="_top"><button>Entrar</button></a>
				</div>
			</div>

			<div id="medicoLogin">
				<h2>Médico</h2>
				<p>Para entrar como MÉDICO, clique no botão abaixo.</p>
				<img src="../img/medicoIcon.png">
				<div class="buttonCenter">
					<a href="./loginmedico.jsp" target="_top"><button>Entrar</button></a>
				</div>
			</div>
		</div>


	</main>
</body>
</html>