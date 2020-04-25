<%-- 
    Document   : Formulario
    Created on : 10/04/2020, 03:36:15 PM
    Author     : Juan Rodriguez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            
            *{
                font-family: "Trebuchet MS", sans-serif;
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
        <H2>Tabla de valores por hora</H2>
        <font face="Arial">
        <br>
        <table border="2">
            <tr>
                <td>Hora normal: </td>
                <td>15 USD</td>
            </TR>
            <tr>
                <td>Hora extra </td>
                <td>25 USD</td>
            </TR>
            
          
        </table>
        
        
        
        
        
        <h1>Resultados formulario</h1>
        <table border="1">
            <!-- Inicio formulario -->
            <!-- Titulos -->
            <tr >
                <th>Nombre del trabajador</th>
                <th>Horas indicadas</th>
                <th>horas normales trabajadas</th>
                <th>valor horas normales trabajadas</th>
                <th>horas extras trabajadas</th>
                <th>valor horas extras trabajadas</th>
                <th>valor total a recibir</th>
            </tr>
            
            <!-- Campo Nombre -->
            
            <tr>
                <!--Nombre del trabajador-->
                <td>
                    <% 
                        String Vnombre= request.getParameter("nombre");
                        out.println(Vnombre);
                    %> 
                </td>
                <!--Horas indicadas-->
                <td>
                    <% 
                        int Vhtrabajadas= Integer.parseInt(request.getParameter("htrabajadas"));
                        out.println(Vhtrabajadas);
                    %> 
                </td>
                <!--horas normales trabajadas-->
                <td>
                    <% 
                        if (Vhtrabajadas >= 40){
                            out.println("40");
                        }                        
                        else {                            
                            out.println(Vhtrabajadas);
                            
                        }
                    %> 
                </td>
                <!--valor horas normales trabajadas-->
                <td>
                    <% 
                        double vValorHorasNormales=0;
                        double vHoraNormal = 15;
                        if (Vhtrabajadas >= 40){
                            //double vValorHorasNormales;
                            vValorHorasNormales = 40 * vHoraNormal;
                            out.println(vValorHorasNormales+" USD");
                        }
                        
                        else {                            
                            
                            vValorHorasNormales = Vhtrabajadas * vHoraNormal;
                            out.println(vValorHorasNormales+" USD");
                            
                        }
                        
                    %> 
                </td>
                <!--horas extras trabajadas-->
                <td>
                    <% 
                        if (Vhtrabajadas >= 40){
                            out.println(Vhtrabajadas-40);
                        } else {
                            out.println("No se trabajaron horas extras");
                        }                   
                        
                    %> 
                </td>
                <!--valor horas extras trabajadas-->
                <td>
                    <% 
                        double vValorHorasExtras=0;
                        double vHoraExtra = 25;
                        if (Vhtrabajadas >= 40){
                            int VCantidadHorasExtras = Vhtrabajadas-40;
                            
                            vValorHorasExtras = VCantidadHorasExtras * vHoraExtra;
                            out.println(vValorHorasExtras+" USD");
                        } else{
                            out.println("No se trabajaron horas extras");
                        }                   
                        
                    %> 
                </td>
                <!--valor total a recibir-->
                <td>
                    <% 
                        double vValorTotal =  vValorHorasNormales +  vValorHorasExtras;                    
                        out.println(vValorTotal+ " USD");
                    %> 
                </td>
        </table>
    </body>
</html>
