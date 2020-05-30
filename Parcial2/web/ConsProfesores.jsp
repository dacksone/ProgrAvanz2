<%-- 
    Document   : ConsProfesores
    Created on : 16/05/2020, 10:46:09 AM
    Author     : Juan Rodriguez
--%>


<html>
    <head>
<script type="text/javascript" src="javascript.js"></script>
<link rel="stylesheet" href="estilos.css">
<link rel="stylesheet" href="estilosJSP.css">
</head>
<body>

   

<%@include file="conexion.jsp" %>
<%@include file="header.html" %>

<%    ResultSet rs = sql.executeQuery("select IdProfesor , nombre, apellido, telefono,correo,especialidad from profesores");

    out.println("<H2>Tabla de resultados</H2>");
    out.println("<font face=Arial>");
    out.println("<br>");
    out.println("<table border=2>");
    out.println("<tr>");
    out.println("<th>Codigo Profesor</th>");
        out.println("<th>Nombres</th>");
        out.println("<th>Apellidos</th>");
        out.println("<th>Telefono</th>");
        out.println("<th>Correo</th>");
        out.println("<th>Especialidad</th>");
        out.println("<th>Opciones</th>");
        out.println("</tr>");

    while (rs.next()) {

        

        out.println("<tr>");

        out.println("<!--Codigo Profesor-->");
        out.println("<td>");

        out.println(rs.getInt("IdProfesor"));
        
        out.println("</td>");
        out.println("<!--Nombres -->");
        out.println("<td>");

        out.println(rs.getString("nombre"));

        out.println("</td>");
        out.println("<!--Apellidos -->");
        out.println("<td>");

        out.println(rs.getString("apellido"));

        

        out.println("</td>");
        out.println("<!--Telefono -->");
        out.println("<td>");

        out.println(rs.getString("telefono"));

        out.println("</td>");
        out.println("<!--Correo -->");
        out.println("<td>");

        out.println(rs.getString("correo"));
        
        out.println("</td>");
        out.println("<!--especialida -->");
        out.println("<td>");

        out.println(rs.getString("especialidad"));

        out.println("</td>");
         out.println("<!--Opciones -->");
        out.println("<td>");

        out.println("<a href=ModProfesores1.jsp?IdProfesor=" + rs.getInt("IdProfesor") + "> Modificar </a>"+
                    "<a href=ElimProfesores.jsp?IdProfesor=" + rs.getInt("IdProfesor") + ">    Eliminar </a>");

        out.println("</td>");

        out.println("</tr>");
    }
        out.println("</table>");

        out.println("<br>");
    

        rs.close();
        sql.close();
        conex.close();
%>

</body>
<a href="profesores.jsp">Regresar al formulario </a>
<br>

<div w3-include-html="footer.html"></div> 

</html>
    







