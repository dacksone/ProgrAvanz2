<%-- 
    Document   : profesores
    Created on : 2/05/2020, 07:41:36 AM
    Author     : Juan Rodriguez
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="estilosJSP.css">
    </head>
    <body>
        <div id="PrimerContenedor" >
            <header>
                <h1 >Resultados de formulario profesores </h1>
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
                        <th>Materia</th>
                    </tr>

                    <tr>


                        <!--Codigo -->
                        <td>
                            <%
                                String vCodigo = request.getParameter("Codigo");
                                out.println(vCodigo);
                            %>                
                        </td>
                        <!--Apellidos -->
                        <td>
                            <%
                                String vApellido = request.getParameter("Apellidos");
                                out.println(vApellido);
                            %>                
                        </td>
                        <!--Nombres -->
                        <td>
                            <%
                                String vNombres = request.getParameter("Nombres");
                                out.println(vNombres);
                            %>                
                        </td>
                        <!--Telefono -->
                        <td>
                            <%
                                int vTelefono = Integer.parseInt(request.getParameter("Telefono"));
                                out.println(vTelefono);
                            %>                
                        </td>
                        <!--Correo -->
                        <td>
                            <%
                                String vMateria = request.getParameter("Materia");
                                out.println(vMateria);
                            %>                
                        </td>

                    </tr>
                </table>
                <br>
                <a href="profesores.html">Regresar al formulario </a>
                <br>
                <a href="index.html">Regresar al Menu Principal </a>
                <div>
                    </body>
                    </html>

