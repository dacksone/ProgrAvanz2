<%-- 
    Document   : notas
    Created on : 2/05/2020, 07:36:55 AM
    Author     : Juan Rodriguez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexion.jsp" %>

<%        int vCodigo = Integer.parseInt(request.getParameter("Codigo"));
    String vMateria = request.getParameter("Materia");
    double vNota1 = Double.parseDouble(request.getParameter("Nota1"));
    double vNota2 = Double.parseDouble(request.getParameter("Nota2"));
    double vNota3 = Double.parseDouble(request.getParameter("Nota3"));
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
                                vCodigo = Integer.parseInt(request.getParameter("Codigo"));
                                out.println(vCodigo);
                            %>                
                        </td>
                        <!--Nombre de Materia -->
                        <td>
                            <%
                                vMateria = request.getParameter("Materia");
                                out.println(vMateria);
                            %>                
                        </td>
                        <!--Nota1 -->
                        <td>
                            <%
                                vNota1 = Double.parseDouble(request.getParameter("Nota1"));
                                out.println(vNota1);
                            %>                
                        </td>
                        <!--Nota2 -->
                        <td>
                            <%
                                vNota2 = Double.parseDouble(request.getParameter("Nota2"));
                                out.println(vNota2);
                            %>                
                        </td>
                        <!--Nota3 -->
                        <td>
                            <%
                                vNota3 = Double.parseDouble(request.getParameter("Nota3"));
                                out.println(vNota3);
                            %>                
                        </td>
                        

                    </tr>
                </table>
                <br>
                <a>
                    <%
                        String consultar = "select IdEstudiante from estudiantes where IdEstudiante =" + vCodigo;
                        int ID = 0;
                        ResultSet data = sql.executeQuery(consultar);
                        while (data.next()) {
                            ID = data.getInt(1);
                        }
                        if (vCodigo == ID) {
                            out.println("el codigo " + ID + " ya se encuentra registrado");

                        } else {

                            //Creacion de consulta de acuerdo a los valores anteriores del formulario
                            String statement = "insert into estudiantes(IdEstudiante,nombre,apellido,telefono,correo) values (" + vCodigo + ",'" + vNombres + "','" + vApellido + "','" + vTelefono + "','" + vCorreo + "')";
                            //Executar consulta
                            sql.executeUpdate(statement);
                            //Imprimir confirmacion
                            out.println("Usuario " + vNombres + " " + vApellido + " registrado");

                        }
                    %>
                </a>
                <a href="notasold.html">Regresar al formulario </a>
                <br>
                <a href="indexold.html">Regresar al Menu Principal </a>
                <div>
                    </body>
                    </html>

