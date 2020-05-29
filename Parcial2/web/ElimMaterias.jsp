<%-- 
    Document   : ElimMaterias
    Created on : 28/05/2020, 09:26:23 PM
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
    int vcodigo = Integer.parseInt(request.getParameter("codigo"));
    String cadena = "delete  from materias where codigo=" + vcodigo;
    sql.executeUpdate(cadena);
    out.println("Registro de la materia eliminado correctamente ");

%>
<br>
<a href="ConsMaterias.jsp">Regresar al consultar materias </a>
<br>
<div w3-include-html="footer.html"></div> 