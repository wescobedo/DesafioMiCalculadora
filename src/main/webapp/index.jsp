<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Desafio Mi Calculadora</title>
<link rel="stylesheet"
	href="https://unpkg.com/@picocss/pico@latest/css/pico.min.css">


</head>
<body>

<main class="container">
		<h1>Calculadora</h1>
		<div class="grid">
			<form name="formulario" action="/DesafioMiCalculadora/Servlet"
				method="post">
				<div class="field">
					<label for="numero1">Numero 1</label> <input type="text"
						name="numero1">
				</div>
				<div class="field">
					<label for="numero2">Numero 2</label> <input type="text"
						name="numero2">
				</div>

				<div >
					<label for="operacion" class="form-label"></label> 
					<select id="operacion" name="operacion" required>
						<option value="+">Suma</option>

						<option value="-">Resta</option>

						<option value="*">Multiplicacion</option>

						<option value="/">Division</option>

						<option value="&">Ordenar el numero</option>

						<option value="%">Cual es par o impar</option>
					</select>
				</div>


				<div class="actions">
					<input type="submit" value="Calcular">
				</div>
			</form>
			

		</div>
	</main>


</body>
</html>