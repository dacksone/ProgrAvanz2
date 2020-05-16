<%-- 
    Document   : ConsEstudiantes.jsp
    Created on : 2/05/2020, 06:30:43 AM
    Author     : Juan Rodriguez
--%>


   

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

        out.println("</tr>");
    }
        out.println("</table>");

        out.println("<br>");
    

        rs.close();
        sql.close();
        conex.close();
%>
<a href="estudiantes1.html">Regresar al formulario </a>
<br>

<a href="index.html">Regresar al Menu Principal </a>
<div>       
    







