<%-- 
    Document   : estudiantes
    Created on : 2/05/2020, 06:30:43 AM
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
    </head>
    <body>
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
        String consultar = "select IdEstudiante from estudiantes where IdEstudiante ="+vCodigo;
        int ID = 0;
        ResultSet data = sql.executeQuery(consultar);
        while(data.next()){
            ID = data.getInt(1);
        }
       if (vCodigo == ID ){
            out.println("el codigo "+ID+" ya se encuentra registrado");
            
        }
        else {
        
        
        //Creacion de consulta de acuerdo a los valores anteriores del formulario
        String statement = "insert into estudiantes(IdEstudiante,nombre,apellido,telefono,correo) values ("+vCodigo+",'"+vNombres+"','"+vApellido+"','"+vTelefono+"','"+vCorreo+"')";
        //Executar consulta
        sql.executeUpdate(statement);
        //Imprimir confirmacion
        out.println("Usuario "+vNombres+" "+vApellido+" registrado");
        
       }
    %>
                </a>
                <br>
                    
                <a href="estudiantes1.html">Regresar al formulario </a>
                <br>
                <a href="index.html">Regresar al Menu Principal </a>
                <div>
                    </body>
                    </html>
                    
