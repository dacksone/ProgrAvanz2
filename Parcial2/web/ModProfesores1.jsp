<%-- 
    Document   : ModProfesores1
    Created on : 29/05/2020, 08:56:29 PM
    Author     : Juan Rodriguez
--%>



<html>
    <head>
        <script type="text/javascript" src="javascript.js"></script>
        <link rel="stylesheet" href="estilos.css">
        <link rel="stylesheet" href="estilosJSP.css">
        <script type="text/javascript" src="javascript.js"></script>
    </head>
    <body>



        <%@include file="conexion.jsp" %>

        <%            int vcodigo = Integer.parseInt(request.getParameter("IdProfesor"));
            String cadena = "select * from profesores where IdProfesor=" + vcodigo;
            ResultSet rs1 = sql.executeQuery(cadena);
            while (rs1.next()) {

        %>



        <div w3-include-html="header.html"></div> 

        <script>
            includeHTML();
        </script>

        <FORM name="form1"  ACTION ="ModProfesores2.jsp" METHOD="POST" onSubmit="return Validar(this)">
            <H2>CAPTURA DE DATOS - PROFESOR</H2>
            <font face="Arial"> 
            <br>
            <br>	   
            <table border="1">
                <tr>	
                    <td>Codigo</td>       
                    <td><input name="Codigo" type="text"   id="Codigo"    size="50" title="Codigo" readonly value ="<% out.println(rs1.getInt("IdProfesor"));%>"></td>
                </TR> 
                <tr>       	
                    <td>Nombres</td>
                    <td><input name="Nombres" type="text"  id="Nombres"  size="20" title="Nombres" value ="<% out.println(rs1.getString("nombre"));%>"></td>
                </TR> 
                <tr>       	
                    <td>Apellidos</td>
                    <td><input name="Apellidos" type="text"  id="Apellidos"  size="20" title="Apellidos" value ="<% out.println(rs1.getString("apellido"));%>"></td>
                </TR>  	

                <tr>
                    <td>Telefono</td>
                    <td><input name="Telefono" type="text"  id="Telefono" value ="<% out.println(rs1.getInt("telefono"));%>"> </td>
                </tr>

                <tr>
                    <td>Correo</td>
                    <td><input name="Correo" type="text"  id="Correo" value ="<% out.println(rs1.getString("correo"));%>"> </td>
                </tr>

                <tr>
                    <td>Especialidad</td>
                    <td><input name="Especialidad" type="text"  id="Especialidad" value ="<% out.println(rs1.getString("especialidad"));%>"> </td>
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




    </body>
    <div w3-include-html="footer.html"></div> 



</html>








