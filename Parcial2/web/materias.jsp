<%-- 
    Document   : materias
    Created on : 2/05/2020, 07:29:00 AM
    Author     : Juan Rodriguez
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexion.jsp" %>

<!-- Captura de valores del formulario -->
<%        int vCodigo = Integer.parseInt(request.getParameter("Codigo"));
    String vNombreMateria = request.getParameter("NombreMateria");
    String vIntensidad = request.getParameter("Intensidad");
    String vCreditos = request.getParameter("Creditos");

%>



<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link rel="stylesheet" href="estilosJSP.css">
        <link rel="stylesheet" href="estilos.css">
        <script type="text/javascript" src="javascript.js"></script>
    </head>
    <body>
        <%@include file="header.html" %>


        <div id="PrimerContenedor" >
            <header>
                <h1 >Formulario materias </h1>
            </header>

            <div>

                <H2>Tabla de datos ingresados ->  materias</H2>
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
                            <%                                
                                out.println(vCodigo);
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
                        String consultar = "select codigo from materias where codigo =" + vCodigo;
                        int ID = 0;
                        ResultSet data = sql.executeQuery(consultar);
                        while (data.next()) {
                            ID = data.getInt(1);
                        }
                        if (vCodigo == ID) {
                            out.println("El codigo " + ID + " ya se encuentra registrado");

                        } else {

                            //Creacion de consulta de acuerdo a los valores anteriores del formulario
                            String statement = "insert into materias(codigo,nombre,intensidad,creditos) values ('" + vCodigo + "','" + vNombreMateria + "'," + vIntensidad + "," + vCreditos + ")";
                            //Executar consulta
                            sql.executeUpdate(statement);
                            //Imprimir confirmacion
                            out.println("La materia  " + vNombreMateria + " ha sido registrada");

                        }
                    %>
                    <br>    
                </a>
                <a href="materias.html">Regresar al formulario </a>
                <br>
                <div w3-include-html="footer.html"></div> 
                <div>
                    </body>
                    </html>

