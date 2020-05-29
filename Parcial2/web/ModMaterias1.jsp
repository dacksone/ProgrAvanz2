<%-- 
    Document   : ModMaterias1
    Created on : 28/05/2020, 09:08:41 PM
    Author     : Juan Rodriguez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexion.jsp" %>

<%    int vcodigo = Integer.parseInt(request.getParameter("codigo"));
    String cadena = "select * from materias where codigo=" + vcodigo;
    ResultSet rs1 = sql.executeQuery(cadena);
    while (rs1.next()) {

%>

<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="estilos.css">
        <link rel="stylesheet" href="estilosJSP.css">
        <script type="text/javascript" src="javascript.js"></script>



    </head>
    <body>
        <div w3-include-html="header.html"></div> 

        <script>
            includeHTML();
        </script>

        <FORM name="form1"  ACTION ="ModMaterias2.jsp" METHOD="POST" >
            <H2>Actualizacion datos - MATERIAS</H2>
            <font face="Arial"> 
            <br>
            <br>	   
            <table border="1">
                <tr>	
                    <td>Codigo de materia</td>       
                    <td><input name="Codigo" type="text"   id="Codigo"    size="50" title="Codigo" readonly value ="<% out.println(rs1.getInt("codigo"));%>"></td>
                </TR> 
                <tr>       	
                    <td>Nombre Materia</td>
                    <td><input name="NombreMateria" type="text"  id="NombreMateria"  size="20" title="NombreMateria"  value ="<% out.println(rs1.getInt("nombre"));%>"></td>
                </TR>  	
                <tr>       	
                    <td>Intensidad</td>
                    <td><input name="Intensidad" type="text"  id="Intensidad"  size="20" title="Intensidad"  value ="<% out.println(rs1.getInt("intensidad"));%>"></td>
                </TR>  	
                <tr>
                    <td>Creditos</td>
                    <td><input name="Creditos" type="text"  id="Creditos"  value ="<% out.println(rs1.getInt("creditos"));%>"> </td>
                </tr>

                <tr>
                    <td><input type="submit" value="Enviar"></td>
                    <td></td>
                </tr>
            </table>
        </FORM>
        <%
            }
            rs1.close();
        %>
        <br>
        <div w3-include-html="footer.html"></div> 
    </body>
</html>
