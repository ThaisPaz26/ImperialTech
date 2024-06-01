<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link href="../css/menu.css" rel="stylesheet">
</head>
<body>
	<header>
		<div class="container text-center">
			<div class="row">
				<div class="col-2">
					<a href='../index.jsp' target="_top"><img
						src="../img/logoIcon.png" id="logoPNG"></a>
				</div>

				<div class="col-10">
					<nav id='menu'>
						<input type='checkbox' id='responsive-menu' onclick='updatemenu()'><label></label>
						<ul>
							<li><a href='./login.jsp' target="_top">Entrar</a></li>
							<li><a href='../Cadastro.jsp' target="_top">Cadastrar</a></li>
							<li><a href='../index.jsp' target="_top">Consultas</a></li>
							<li><a href='./sobre.jsp' target="_top">Sobre Nós</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</header>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
	<script>
		function updatemenu() {
			if (document.getElementById('responsive-menu').checked == true) {
				document.getElementById('menu').style.borderBottomRightRadius = '0';
				document.getElementById('menu').style.borderBottomLeftRadius = '0';
			} else {
				document.getElementById('menu').style.borderRadius = '10px';
			}
		}>
	</script>

</body>
</html>