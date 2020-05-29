<%-- 
    Document   : ConsMaterias
    Created on : 16/05/2020, 09:50:32 AM
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

        <%    ResultSet rs = sql.executeQuery("select codigo , nombre, intensidad, creditos from materias");

            out.println("<H2>Tabla de resultados</H2>");
            out.println("<font face=Arial>");
            out.println("<br>");
            out.println("<table border=2>");
            out.println("<tr>");
            out.println("<th>Codigo de materia</th>");
            out.println("<th>Nombre de materia</th>");
            out.println("<th>Intesidad</th>");
            out.println("<th>Creditos</th>");   
            out.println("<th>Opciones</th>"); 
            out.println("</tr>");

            while (rs.next()) {

                out.println("<tr>");

                out.println("<!--Codigo -->");
                out.println("<td>");

                out.println(rs.getInt("codigo"));

                out.println("</td>");
                out.println("<!--Nombre materia-->");
                out.println("<td>");

                out.println(rs.getString("nombre"));

                out.println("</td>");
                out.println("<!--Intesidad -->");
                out.println("<td>");

                out.println(rs.getString("intensidad"));

                out.println("</td>");
                out.println("<!--Creditos -->");
                out.println("<td>");

                out.println(rs.getString("creditos"));

                out.println("</td>");
                out.println("<td>");

                out.println("<a href=ModMaterias1.jsp?codigo=" + rs.getInt("codigo") + "> Modificar </a>"+
                            "<a href=ElimMaterias.jsp?codigo=" + rs.getInt("codigo") + ">    Eliminar </a>");

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

    <div w3-include-html="footer.html"></div> 

</html>









