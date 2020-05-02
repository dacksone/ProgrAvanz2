<%-- 
    Document   : materias
    Created on : 2/05/2020, 07:29:00 AM
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
                <h1 >Resultados de formulario materias </h1>
            </header>

            <div>

                <H2>Tabla de resultados materias</H2>
                <font face="Arial">
                <br>
                <table border="2">
                    <tr>

                        <th>Codigo de materia</th>
                        <th>Nombre de Materia</th>
                        <th>Departamento</th>
                        <th>Nombre Profesor</th>
                        
                    </tr>

                    <tr>


                        <!-- Codigo de materia -->
                        <td>
                            <%
                                String vCodigo = request.getParameter("Codigo");
                                out.println(vCodigo);
                            %>                
                        </td>
                        <!--Nombre de Materia -->
                        <td>
                            <%
                                String vNombre = request.getParameter("Nombre");
                                out.println(vNombre);
                            %>                
                        </td>
                        <!--Departamento -->
                        <td>
                            <%
                                String vDepartamento = request.getParameter("Departamento");
                                out.println(vDepartamento);
                            %>                
                        </td>
                        <!--Nombre Profesor -->
                        <td>
                            <%
                                String vNProfesor = request.getParameter("NProfesor");
                                out.println(vNProfesor);
                            %>                
                        </td>
                        

                    </tr>
                </table>
                <br>
                <a href="materias.html">Regresar al formulario </a>
                <br>
                <a href="index.html">Regresar al Menu Principal </a>
                <div>
                    </body>
                    </html>

