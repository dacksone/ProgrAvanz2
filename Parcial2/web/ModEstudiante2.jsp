<%-- 
    Document   : ModEstudiante2
    Created on : 28/05/2020, 08:32:37 PM
    Author     : Juan Rodriguez
--%>


<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@include file="conexion.jsp" %>
<!-- Captura de valores del formulario -->
<%        
    int vCodigo = Integer.parseInt(request.getParameter("Codigo"));
    String vNombres = request.getParameter("Nombres");
    String vApellido = request.getParameter("Apellidos");
    String vTelefono = request.getParameter("Telefono");
    String vCorreo = request.getParameter("Correo");
%>




<!DOCTYPE html>
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
        <div id="PrimerContenedor" >
            <header>
                <h1 >Resultados de formulario estudiantes </h1>
            </header>

            <div>

                <H2>Tabla de resultados</H2>
                <font face="Arial">
                <br>
                <table border="2">
                    <tr>

                        <th>Codigo</th>
                        <th>Apellidos</th>
                        <th>Nombres</th>
                        <th>Telefono</th>
                        <th>Correo</th>
                    </tr>

                    <tr>


                        <!--Codigo -->
                        <td>
                            <%
                                vCodigo = Integer.parseInt(request.getParameter("Codigo"));
                                out.println(vCodigo);
                            %>                
                        </td>
                        <!--Apellidos -->
                        <td>
                            <%
                                vApellido = request.getParameter("Apellidos");
                                out.println(vApellido);
                            %>                
                        </td>
                        <!--Nombres -->
                        <td>
                            <%
                                vNombres = request.getParameter("Nombres");
                                out.println(vNombres);
                            %>                
                        </td>
                        <!--Telefono -->
                        <td>
                            <%
                                vTelefono = request.getParameter("Telefono");
                                out.println(vTelefono);
                            %>                
                        </td>
                        <!--Correo -->
                        <td>
                            <%
                                //String vCorreo = request.getParameter("Correo");
                                out.println(vCorreo);
                            %>                
                        </td>

                    </tr>
                </table>
                <br>
                <a>
                    <%
                        

                            //Creacion de consulta de acuerdo a los valores anteriores del formulario
                            String statement = "update estudiantes set IdEstudiante ="+vCodigo+",nombre='"+vNombres+"',apellido='"+vApellido+ "',telefono="+vTelefono +",correo='"+vCorreo +"' where IdEstudiante ="+vCodigo;
                            //update estudiantes set IdEstudiante ="+vCodigo+",nombre='"+vNombres+"',apellido='"+vApellido+ "',telefono="+vTelefono +",correo='"+vCorreo +"' where idproducto ="+vcodigo;
                            //Executar consulta
                            sql.executeUpdate(statement);
                            //Imprimir confirmacion
                            out.println("Estudiante: " + vNombres + " " + vApellido + " ha sido actualizado");

                        
                    %>
                </a>
                <br>

                <a href="ConsEstudiantes.jsp">Regresar al consultar estudiantes </a>
                <br>
                <div w3-include-html="footer.html"></div> 
                <div>
                    </body>
                    </html>

