<%-- 
    Document   : ModMaterias2
    Created on : 28/05/2020, 09:08:49 PM
    Author     : Juan Rodriguez
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexion.jsp" %>

<!-- Captura de valores del formulario -->
<%        
    int vCodigo = Integer.parseInt(request.getParameter("Codigo"));
    String vNombreMateria = request.getParameter("NombreMateria");
    String vIntensidad = request.getParameter("Intensidad");
    String vCreditos = request.getParameter("Creditos");

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
                <h1 >Resultados de formulario materias </h1>
            </header>

            <div>

                <H2>Tabla de resultados</H2>
                <font face="Arial">
                <br>
                <table border="2">
                    <tr>

                        <th>Codigo de materia</th>
                        <th>Nombre de Materia</th>
                        <th>Intensidad horaria</th>
                        <th>Numero de creditos</th>

                    </tr>

                    <tr>


                        <!-- Codigo de materia -->
                        <td>
                            <%                                out.println(vCodigo);
                            %>                
                        </td>
                        <!--Nombre de Materia -->
                        <td>
                            <%
                                out.println(vNombreMateria);
                            %>                
                        </td>
                        <!--Intensidad horaria -->
                        <td>
                            <%
                                out.println(vIntensidad);
                            %>                
                        </td>
                        <!--Numero de creditos -->
                        <td>
                            <%
                                out.println(vCreditos);
                            %>                
                        </td>


                    </tr>
                </table>
                <br>
                <a>

                    <%
                        //Creacion de consulta de acuerdo a los valores anteriores del formulario
                        String statement = "update materias set codigo ='" + vCodigo + "',nombre='" + vNombreMateria + "',intensidad=" + vIntensidad + ",creditos=" + vCreditos + " where codigo =" + vCodigo;
                       //update estudiantes set IdEstudiante ="+vCodigo+",nombre='"+vNombres+"',apellido='"+vApellido+ "',telefono="+vTelefono +",correo='"+vCorreo +"' where idproducto ="+vcodigo;
                        //Executar consulta
                        sql.executeUpdate(statement);
                        //Imprimir confirmacion
                        out.println("Materia: " + vNombreMateria+ " ha sido actualizado");


                    %>

                    <br>    
                </a>
                <a href="ConsMaterias.jsp">Regresar al formulario </a>
                <br>
                <div w3-include-html="footer.html"></div> 
                <div>
                    </body>
                    </html>


