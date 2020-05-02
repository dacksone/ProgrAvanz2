<%-- 
    Document   : notas
    Created on : 2/05/2020, 07:36:55 AM
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
                <h1 >Resultados de formulario Notas </h1>
            </header>

            <div>

                <H2>Tabla de resultados Notas</H2>
                <font face="Arial">
                <br>
                <table border="2">
                    <tr>

                        <th>Codigo de materia</th>
                        <th>Nombre de Materia</th>
                        <th>Nota1</th>
                        <th>Nota2</th>
                        <th>Nota3</th>
                        
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
                        <!--Nota1 -->
                        <td>
                            <%
                                double vNota1 = Double.parseDouble(request.getParameter("Nota1"));
                                out.println(vNota1);
                            %>                
                        </td>
                        <!--Nota2 -->
                        <td>
                            <%
                                double vNota2 = Double.parseDouble(request.getParameter("Nota2"));
                                out.println(vNota2);
                            %>                
                        </td>
                        <!--Nota3 -->
                        <td>
                            <%
                                double vNota3 = Double.parseDouble(request.getParameter("Nota3"));
                                out.println(vNota3);
                            %>                
                        </td>
                        

                    </tr>
                </table>
                <br>
                <a href="notas.html">Regresar al formulario </a>
                <br>
                <a href="index.html">Regresar al Menu Principal </a>
                <div>
                    </body>
                    </html>

