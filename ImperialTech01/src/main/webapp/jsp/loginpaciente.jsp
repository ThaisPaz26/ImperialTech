<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!doctype html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Imperial Consultas</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.js"
	integrity="sha512-+k1pnlgt4F1H8L7t3z95o3/KO+o78INEcXTbnoJQ/F2VqDVhWoaiVml/OEHv9HsVgxUaVW+IbiZPUJQfF/YxZw=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</head>
<body>

	<header>
		<object data="./menu.jsp" width="100%" height="100px"></object>
	</header>


	<div class="container text-center">
	<div class="col-4"></div>
		<div class="col-12">

			<br>
			<h2>Login Paciente</h2>
			<br>

			<div class="mb-3 row">
				<div class="col-sm-2"></div>
				<div class="col-sm-7"></div>
			</div>
			<div class="mb-3 row">
				<label for="email" class="col-sm-2 col-form-label">Email</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="email" value=""
						placeholder="Digite o email" required>
				</div>
			</div>
			<div class="mb-3 row">
				<label for="rp" class="col-sm-2 col-form-label">R.P</label>
				<div class="col-sm-10">
					<input type="number" class="form-control" id="rp" value=""
						placeholder="Digite o R.P" required>
				</div>
			</div>
			<div class="mb-3 row">
				<label for="senha" class="col-sm-2 col-form-label">Senha</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="senha" value=""
						placeholder="Digite a senha" required>
				</div>
			</div>
			<button type="button" class="btn btn-primary">Confirmar</button>
		</div>
	<div class="col-4"></div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>