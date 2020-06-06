<%-- 
    Document   : empleados
    Created on : 2/05/2020, 06:30:43 AM
    Author     : Juan Rodriguez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@include file="conexion.jsp" %>
<!-- Captura de valores del formulario -->
<%        String vCodigo = request.getParameter("codigo");
    String vNombre = request.getParameter("nombre");
    String vEdad = request.getParameter("edad");
    String vOficio = request.getParameter("oficio");
    String vFecha = request.getParameter("fecha");
    float vSalario = Float.parseFloat(request.getParameter("salario"));
%>




<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>captura</title>
        

    </head>
    <body>
        

        
        <div id="PrimerContenedor" >
            <header>
                <h1 >Resultados de formulario empleado </h1>
            </header>

            <div>

                <H2>Tabla de resultados</H2>
                <font face="Arial">
                <br>
                <table border="2">
                    <tr>

                        <th>Codigo</th>
                        <th>Nombre</th>
                        <th>Edad</th>
                        <th>Oficio</th>
                        <th>Fecha Ingreso</th>
                        <th>Salario</th>
                    </tr>

                    <tr>


                        <!--Codigo -->
                        <td>
                            <%
                                //
                                out.println(vCodigo);
                            %>                
                        </td>
                        <!--Apellidos -->
                        <td>
                            <%
                                //vApellido = request.getParameter("Apellidos");
                                out.println(vNombre);
                            %>                
                        </td>
                        <!--Nombres -->
                        <td>
                            <%
                                //vNombres = request.getParameter("Nombres");
                                out.println(vEdad);
                            %>                
                        </td>
                        <!--Telefono -->
                        <td>
                            <%
                                //vTelefono = request.getParameter("Telefono");
                                out.println(vOficio);
                            %>                
                        </td>
                        <!--Correo -->
                        <td>
                            <%
                                //String vCorreo = request.getParameter("Correo");
                                out.println(vFecha);
                            %>                
                        </td>
                        <td>
                            <%
                                //String vCorreo = request.getParameter("Correo");
                                out.println(vSalario);
                            %>                
                        </td>

                    </tr>
                </table>
                <br>
                <a>
                    <%
                        

                            //Creacion de consulta de acuerdo a los valores anteriores del formulario
                            String statement = "insert into empleados(codigo,nombre,edad,oficio,fechaIngreso,sueldo) values ('" + vCodigo + "','" + vNombre + "'," + vEdad + ",'" + vOficio + "','" + vFecha + "'," + vSalario + ")";
                            //Executar consulta
                            sql.executeUpdate(statement);
                            //Imprimir confirmacion
                            out.println("Usuario " + vNombre +" ha sido registrado");

                        
                    %>
                </a>
                <br>

                <a href="ConsEmpleados.jsp">Regresar al formulario </a>
                <br>
               
                <div>
                    </body>
                    </html>

