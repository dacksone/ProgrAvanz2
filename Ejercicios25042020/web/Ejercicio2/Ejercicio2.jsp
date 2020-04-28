<%-- 
    Document   : Ejercicio2jsp
    Created on : 27/04/2020, 09:41:26 PM
    Author     : Juan Rodriguez
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <style>

            *{
                font-family: "Trebuchet MS", sans-serif;
                margin: 0px;
                padding: 0px;
            }
            body {
                background: #ffffff;                
            }
            #PrimerContenedor{
                width: 1200px;
                margin: auto;
                margin-top: 20px;
                margin-bottom: 20px;                
            }
            header{
                height: 50px;

            }
            header h1{
                font-size: 50px;
                text-align: center;
                line-height: 50px;
            }
            #sectionleft{
                width: 100%;
                height: 200px;

                float: left;
                margin-top: 10px;
                margin-left: 10px;
                margin-right: 10px;
                margin-bottom: 10px;


            }
            #sectionrigth{
                width: 0%;
                height: 400px;

                float: right;
                margin-top: 10px;
                margin-left: 10px;
                margin-right: 10px;
                margin-bottom: 10px;

            }
            th{
                padding:15px;
                color:#fff;
                text-shadow:1px 1px 1px #568F23;
                border:1px solid #93CE37;
                border-bottom:3px solid #9ED929;
                background-color:#9DD929;
                background:-webkit-gradient
                    (
                    linear,
                    left bottom,
                    left top,
                    color-stop(0.02, rgb(123,192,67)),
                    color-stop(0.51, rgb(139,198,66)),
                    color-stop(0.87, rgb(158,217,41))
                    );
                background: -moz-linear-gradient
                    (
                    center bottom,
                    rgb(123,192,67) 2%,
                    rgb(139,198,66) 51%,
                    rgb(158,217,41) 87%
                    );
                -webkit-border-top-left-radius:5px;
                -webkit-border-top-right-radius:5px;
                -moz-border-radius:5px 5px 0px 0px;
                border-top-left-radius:5px;
                border-top-right-radius:5px;
            }
            td{
                padding:10px;
                text-align:center;
                background-color:#DEF3CA;
                border: 2px solid #E7EFE0;
                -moz-border-radius:2px;
                -webkit-border-radius:2px;
                border-radius:2px;
                color:#666;
                text-shadow:1px 1px 1px #fff; 
            }




        </style>
    </head>
    <body>

        <div id="PrimerContenedor" >
            <header>
                <h1 >Ejercicio 2 </h1>
            </header>

            <div>

                <H2>Tabla de notas</H2>
                <font face="Arial">
                <table border="2">
                    <tr>
                        <th>Nombre de estudiante</th>
                        <th>Nota 1</th>
                        <th>Nota 2</th>
                        <th>Nota 3</th>
                        <th>Promedio</th>
                        <th>Estado</th>
                    </tr>
                    <tr>
                        <!--Nombre -->
                        <td>
                            <%
                                String vNombre = request.getParameter("nombre");
                                out.println(vNombre);                            
                            %>
                        </td>
                        <!--Nota1 -->
                        <td>
                            <%
                                double vNota1 = Double.parseDouble(request.getParameter("nota1"));
                                out.println(vNota1);                            
                            %>
                        </td>
                        <!--Nota2 -->
                        <td>
                            <%
                                double vNota2 = Double.parseDouble(request.getParameter("nota2"));
                                out.println(vNota2);                            
                            %>
                        </td>
                        <!--Nota3 -->
                        <td>
                            <%
                                double vNota3 = Double.parseDouble(request.getParameter("nota3"));
                                out.println(vNota3);                            
                            %>
                        </td>
                        <!-- Promedio -->
                        <td>
                            <%
                                double Promedio = (vNota1 + vNota2 + vNota3)/3;
                                DecimalFormat formato1 = new DecimalFormat("#.00");
                                out.println(formato1.format(Promedio));                            
                            %>
                        </td>
                        <!-- Estado -->
                        <td>
                            <%
                                if (Promedio >= 7.5){
                                    out.println("Aprobado");
                                } else {
                                    out.println("Desaprobado");
                                }
                            %>
                        </td>
                    </tr>


                </table>
            <div>
        <div>
    </body>
</html>
