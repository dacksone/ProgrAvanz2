<%-- 
    Document   : ElimEstudiantes
    Created on : 28/05/2020, 08:45:21 PM
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
    int vcodigo = Integer.parseInt(request.getParameter("IdEstudiante"));
    String cadena = "delete  from estudiantes where IdEstudiante=" + vcodigo;
    sql.executeUpdate(cadena);
    out.println("Registro del estudiante eliminado correctamente ");

%>
<br>
<a href="ConsEstudiantes.jsp">Regresar al consultar estudiantes </a>
<br>
<div w3-include-html="footer.html"></div> 