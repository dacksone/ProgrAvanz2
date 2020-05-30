<%-- 
    Document   : ModNotas2
    Created on : 29/05/2020, 11:16:30 PM
    Author     : Juan Rodriguez
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexion.jsp" %>

<%        
    //int vIdNota = Integer.parseInt(request.getParameter("IdNota"));
    String vIdNota = request.getParameter("IdNota");
    String vMateria = request.getParameter("materia");
    //int vEstudiante = Integer.parseInt(request.getParameter("estudiante"));
    //int VProfesor = Integer.parseInt(request.getParameter("profesor"));
    
    String vEstudiante = request.getParameter("estudiante");
    String VProfesor = request.getParameter("profesor");
    //String vEstudiante = request.getParameter("estudiante");
    
    double vNota1 = Double.parseDouble(request.getParameter("Nota1"));
    double vNota2 = Double.parseDouble(request.getParameter("Nota2"));
    double vNota3 = Double.parseDouble(request.getParameter("Nota3"));
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
                <h1 >Resultados de formulario Notas </h1>
            </header>

            <div>

                <H2>Tabla de resultados Notas</H2>
                <font face="Arial">
                <br>
                <table border="2">
                    <tr>

                        <th>Materia</th>
                        <th>Estudiante</th>
                        <th>Profesor</th>                        
                        <th>Nota1</th>
                        <th>Nota2</th>
                        <th>Nota3</th>
                        
                    </tr>

                    <tr>


                        <!-- Codigo de materia -->
                        <td>
                            <%
                                //vCodigo = Integer.parseInt(request.getParameter("Codigo"));
                                out.println(vMateria);
                            %>                
                        </td>
                        <!--Codigo de Estudiante -->
                        <td>
                            <%
                                //vMateria = request.getParameter("Materia");
                                out.println(vEstudiante);
                            %>                
                        </td>
                        <!--Codigo de Profesor -->
                        <td>
                            <%
                                //vMateria = request.getParameter("Materia");
                                out.println(VProfesor);
                            %>                
                        </td>
                        <!--Nota1 -->
                        <td>
                            <%
                                //vNota1 = Double.parseDouble(request.getParameter("Nota1"));
                                out.println(vNota1);
                            %>                
                        </td>
                        <!--Nota2 -->
                        <td>
                            <%
                                //vNota2 = Double.parseDouble(request.getParameter("Nota2"));
                                out.println(vNota2);
                            %>                
                        </td>
                        <!--Nota3 -->
                        <td>
                            <%
                                //vNota3 = Double.parseDouble(request.getParameter("Nota3"));
                                out.println(vNota3);
                            %>                
                        </td>
                        

                    </tr>
                </table>
                <br>
                <a>
                <%
                        

                            //Creacion de consulta de acuerdo a los valores anteriores del formulario
                            String statement = "update notas set IdNota ="+vIdNota+",IdEstudiante="+vEstudiante+",IdProfesor="+VProfesor+ ",codigo='"+vMateria +"',nota1="+vNota1 +",nota2="+vNota2 +",nota3="+vNota3 +" where IdNota ="+vIdNota;
                            //update estudiantes set IdEstudiante ="+vCodigo+",nombre='"+vNombres+"',apellido='"+vApellido+ "',telefono="+vTelefono +",correo='"+vCorreo +"' where idproducto ="+vcodigo;
                            //Executar consulta
                            sql.executeUpdate(statement);
                            //Imprimir confirmacion
                            out.println("Nota ha sido actualizada");

                        
                    %>
                </a>
                <br>
                <a href="ConsNotas.jsp">Regresar al formulario </a>
                <br>
                <div w3-include-html="footer.html"></div> 
                <div>
                    </body>
                    </html>

