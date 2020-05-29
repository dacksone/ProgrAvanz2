<%-- 
    Document   : ConsEstudiantes
    Created on : 2/05/2020, 06:30:43 AM
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

<%    ResultSet rs = sql.executeQuery("select IdEstudiante , nombre, apellido, telefono,correo from estudiantes");

    out.println("<H2>Tabla de resultados</H2>");
    out.println("<font face=Arial>");
    out.println("<br>");
    out.println("<table border=2>");
    out.println("<tr>");
    out.println("<th>Codigo</th>");
        out.println("<th>Apellidos</th>");
        out.println("<th>Nombres</th>");
        out.println("<th>Telefono</th>");
        out.println("<th>Correo</th>");
        out.println("<th>Opciones</th>");
        out.println("</tr>");

    while (rs.next()) {

        

        out.println("<tr>");

        out.println("<!--Codigo -->");
        out.println("<td>");

        out.println(rs.getInt("IdEstudiante"));

        out.println("</td>");
        out.println("<!--Apellidos -->");
        out.println("<td>");

        out.println(rs.getString("apellido"));

        out.println("</td>");
        out.println("<!--Nombres -->");
        out.println("<td>");

        out.println(rs.getString("nombre"));

        out.println("</td>");
        out.println("<!--Telefono -->");
        out.println("<td>");

        out.println(rs.getString("telefono"));

        out.println("</td>");
        out.println("<!--Correo -->");
        out.println("<td>");

        out.println(rs.getString("correo"));

        out.println("</td>");
        out.println("<!--Opciones -->");
        out.println("<td>");

        out.println("<a href=ModEstudiante1.jsp?IdEstudiante=" + rs.getInt("IdEstudiante") + "> Modificar </a>"+
                    "<a href=ElimEstudiantes.jsp?IdEstudiante=" + rs.getInt("IdEstudiante") + ">    Eliminar </a>");

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
<a href="estudiantes1.html">Regresar al formulario </a>
<br>

<a href="indexold.html">Regresar al Menu Principal </a>

</html>
    







