<%-- 
    Document   : profesores1
    Created on : 2/05/2020, 07:41:36 AM
    Author     : Juan Rodriguez
--%>




<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexion.jsp" %>


<!-- Captura de valores del formulario -->
<%        int vCodigo = Integer.parseInt(request.getParameter("Codigo"));
    String vNombres = request.getParameter("Nombres");
    String vApellido = request.getParameter("Apellidos");
    String vTelefono = request.getParameter("Telefono");
    String vCorreo = request.getParameter("Correo");
    String vEspecialidad = request.getParameter("Especialidad");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="estilos.css">
        <link rel="stylesheet" href="estilosJSP.css">
        <script type="text/javascript" src="javascript.js"></script>
    </head>
    <body>

        <div w3-include-html="header.html"></div> 

        <script>
            includeHTML();
        </script>

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
                        <th>Correo</th>
                        <th>Especialidad</th>
                    </tr>

                    <tr>


                        <!--Codigo -->
                        <td>
                            <%
                                vCodigo = Integer.parseInt(request.getParameter("Codigo"));
                                out.println(vCodigo);
                            %>                
                        </td>
                        <!--Nombres -->
                        <td>
                            <%
                                vNombres = request.getParameter("Nombres");
                                out.println(vNombres);
                            %>                
                        </td>
                        <!--Apellidos -->
                        <td>
                            <%
                                vApellido = request.getParameter("Apellidos");
                                out.println(vApellido);
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
                                vCorreo = request.getParameter("Correo");
                                out.println(vCorreo);
                            %>                
                        </td>

                        <!--Correo -->
                        <td>
                            <%
                                vEspecialidad = request.getParameter("Especialidad");
                                out.println(vEspecialidad);
                            %>                
                        </td>

                    </tr>
                </table>
                <br>
                <a>
                    <%
                        String consultar = "select IdProfesor from profesores where IdProfesor =" + vCodigo;
                        int ID = 0;
                        ResultSet data = sql.executeQuery(consultar);
                        while (data.next()) {
                            ID = data.getInt(1);
                        }
                        if (vCodigo == ID) {
                            out.println("el codigo " + ID + " ya se encuentra registrado");

                        } else {

                            //Creacion de consulta de acuerdo a los valores anteriores del formulario
                            String statement = "insert into profesores(IdProfesor,nombre,apellido,telefono,correo,especialidad) values (" + vCodigo + ",'" + vNombres + "','" + vApellido + "','" + vTelefono + "','" + vCorreo + "','" + vEspecialidad + "')";
                            //Executar consulta
                            sql.executeUpdate(statement);
                            //Imprimir confirmacion
                            out.println("Profesor " + vNombres + " " + vApellido + " ha sido registrado");

                        }
                    %>

                </a>
                <br>


                <a href="profesores.jsp">Regresar al formulario </a>
                <br>
                <div w3-include-html="footer.html"></div> 
                <div>
                    </body>
                    </html>

