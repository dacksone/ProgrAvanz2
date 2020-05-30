<%-- 
    Document   : ElimNotas
    Created on : 29/05/2020, 11:16:50 PM
    Author     : Juan Rodriguez
--%>


<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@include file="conexion.jsp" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="estilosJSP.css">
        <link rel="stylesheet" href="estilos.css">
        <script type="text/javascript" src="javascript.js"></script>

    </head>
    <body>
        <div w3-include-html="header.html"></div> 

        <script>
            includeHTML();
        </script>
<!-- Captura de valores del formulario -->
<%    
    String vcodigo = request.getParameter("IdNota");
    String cadena = "delete  from notas where IdNota=" + vcodigo;
    sql.executeUpdate(cadena);
    out.println("Registro de la nota eliminado correctamente ");

%>
<br>
<a href="ConsNotas.jsp">Regresar al consultar materias </a>
<br>
<div w3-include-html="footer.html"></div> 
