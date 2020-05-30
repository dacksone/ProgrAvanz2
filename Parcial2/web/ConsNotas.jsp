<%-- 
    Document   : ConsNotas
    Created on : 29/05/2020, 10:41:07 PM
    Author     : Juan Rodriguez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
<script type="text/javascript" src="javascript.js"></script>
<link rel="stylesheet" href="estilos.css">
<link rel="stylesheet" href="estilosJSP.css">
</head>
<body>

   

<%@include file="conexion.jsp" %>
<%@include file="header.html" %>

<%    
    ResultSet rs = sql.executeQuery("select n.IdNota, m.nombre, p.nombre, p.apellido, e.nombre, e.apellido ,n.nota1,n.nota2, n.nota3 "
            + "from notas n INNER JOIN materias m on n.codigo = m.codigo "
            + "INNER JOIN profesores p on n.IdProfesor = p.IdProfesor "
            + "INNER JOIN estudiantes e on n.IdEstudiante = e.IdEstudiante");

    out.println("<H2>Tabla de resultados</H2>");
    out.println("<font face=Arial>");
    out.println("<br>");
    out.println("<table border=2>");
    out.println("<tr>");
        out.println("<th>Id Nota</th>");
        out.println("<th>Estudiante</th>");
        out.println("<th>Profesor</th>");
        out.println("<th>Materia</th>");
        out.println("<th>nota1</th>");
        out.println("<th>nota2</th>");
        out.println("<th>nota3</th>");
        out.println("<th>Opciones</th>");
        
        out.println("</tr>");

    while (rs.next()) {

        

        out.println("<tr>");

        out.println("<!--Id Nota -->");
        out.println("<td>");

        out.println(rs.getInt("n.IdNota"));

        out.println("</td>");
        out.println("<!--Estudiante -->");
        out.println("<td>");

        out.print(rs.getString("e.nombre"));
        out.print(" ");
        out.print(rs.getString("e.apellido"));

        out.println("</td>");
        out.println("<!--Profesor -->");
        out.println("<td>");

        out.print(rs.getString("p.nombre"));
        out.print(" ");
        out.print(rs.getString("p.apellido"));

        out.println("</td>");
        out.println("<!--Materia -->");
        out.println("<td>");

        out.println(rs.getString("m.nombre"));

        out.println("</td>");
        out.println("<!--nota1 -->");
        out.println("<td>");

        out.println(rs.getString("n.nota1"));

        out.println("</td>");
        out.println("<!--nota2 -->");
        out.println("<td>");

        out.println(rs.getString("n.nota2"));

        out.println("</td>");
        out.println("<!--nota3 -->");
        out.println("<td>");

        out.println(rs.getString("n.nota3"));

        out.println("</td>");
        out.println("<!--Opciones -->");
        out.println("<td>");

        out.println("<a href=ModNotas1.jsp?IdNota=" + rs.getInt("IdNota") + "> Modificar </a>"+
                    "<a href=ElimNotas.jsp?IdNota=" + rs.getInt("IdNota") + ">    Eliminar </a>");

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
    








