<%-- 
    Document   : ConsEmpleados
    Created on : 2/05/2020, 06:30:43 AM
    Author     : Juan Rodriguez
--%>
<html>
    <head>

</head>
<body>

   

<%@include file="conexion.jsp" %>


<%    ResultSet rs = sql.executeQuery("select codigo,nombre,edad,oficio,fechaIngreso,sueldo from empleados");

    out.println("<H2>Tabla de resultados</H2>");
    out.println("<font face=Arial>");
    out.println("<br>");
    out.println("<table border=2>");
    out.println("<tr>");
        out.println("<th>Codigo</th>");
        
        out.println("<th>Nombre</th>");
        out.println("<th>Edad</th>");
        out.println("<th>Oficio</th>");
        out.println("<th>fecha Ingreso</th>");
        out.println("<th>Sueldo</th>");
        out.println("</tr>");

    while (rs.next()) {

        

        out.println("<tr>");

        out.println("<!--Codigo -->");
        out.println("<td>");

        out.println(rs.getString("codigo"));

        out.println("</td>");
        out.println("<!--nombre -->");
        out.println("<td>");

        out.println(rs.getString("nombre"));

        out.println("</td>");
        out.println("<!--edad -->");
        out.println("<td>");

        out.println(rs.getInt("edad"));

        out.println("</td>");
        out.println("<!--oficio -->");
        out.println("<td>");

        out.println(rs.getString("oficio"));

        out.println("</td>");
        out.println("<!--fechaIngreso -->");
        out.println("<td>");

        out.println(rs.getString("fechaIngreso"));

        out.println("</td>");
        out.println("<!--sueldo -->");
        out.println("<td>");

        out.println(rs.getFloat("sueldo"));

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
<a href="empleados1.html">Regresar al formulario </a>
<br>


</html>
    







