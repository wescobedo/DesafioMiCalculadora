<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Resultado de Operación</title>
</head>
<body>
    <h2>Resultado de la Operación</h2>
    
    
    <% String operacion = (String) request.getAttribute("operacion"); %>
    
    <% if (operacion.equals("+")||operacion.equals("-")||operacion.equals("*")||operacion.equals("/")) { %>
        <% int res = (int) request.getAttribute("resultado"); %>
        <p> <%= res %></p>
               
    <% } else if (operacion.equals("&")) { %>
        <% int numeroMenor = (int) request.getAttribute("numeroMenor"); %>
        <% int numeroMayor = (int) request.getAttribute("numeroMayor"); %>
        <p>Números ordenados de menor a mayor: <%= numeroMenor %> y <%= numeroMayor %></p>
        
    <% } else if (operacion.equals("%")) { %>
        <% String numero1ParImpar = (String) request.getAttribute("numero1ParImpar"); %>
        <% String numero2ParImpar = (String) request.getAttribute("numero2ParImpar"); %>
        <p>El número <%= request.getAttribute("num1") %> es <%= numero1ParImpar %></p>
        <p>El número <%= request.getAttribute("num2") %> es <%= numero2ParImpar %></p>
        
    <% } %>
    
    <br>
    <a href="index.jsp">Volver</a>
</body>
</html>