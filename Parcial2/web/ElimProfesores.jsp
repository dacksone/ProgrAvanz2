<%-- 
    Document   : ElimProfesores
    Created on : 29/05/2020, 08:56:54 PM
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
    int vcodigo = Integer.parseInt(request.getParameter("IdProfesor"));
    String cadena = "delete  from profesores where IdProfesor=" + vcodigo;
    sql.executeUpdate(cadena);
    out.println("Registro del profesor eliminado correctamente ");

%>
<br>
<a href="ConsProfesores.jsp">Regresar al consultar profesores </a>
<br>
<div w3-include-html="footer.html"></div> 
