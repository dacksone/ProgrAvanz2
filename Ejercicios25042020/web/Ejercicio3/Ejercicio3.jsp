<%-- 
    Document   : Ejercicio3
    Created on : 30/04/2020, 05:19:45 PM
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
        <H2>Tabla de descuentos de acuerdo al tipo de pago</H2>
        <font face="Arial">
        <br>
        <table border="2">
            <tr>
                <th>Pago con tarjeta </th>
                <th>Pago en efectivo</th>
            </tr>
            <tr>
                <td>Recargo de 5% sobre el valor de la compra </td>
                
                <td>Descuento de 3% sobre el valor de la compra</td>
            </tr>
            
          
        </table>
        
        <h1>Resultados de la compra</h1>
        <table border="1">
            <!-- Inicio formulario -->
            <!-- Titulos -->
            <tr >
                <th>Detalle</th>
                <th>Valor registrado</th>
                <th>Tipo de pago</th>
                <th>Descuento/Recargo</th>
                <th>Total a pagar</th>
                
            </tr>
            
            
            
            <tr>
                <!--Detalle-->
                <td>
                    <% 
                        String Vdetalle= request.getParameter("detalle");
                        out.println(Vdetalle);
                    %> 
                </td>
                <!--Valor ingresado-->
                <td>
                    <% 
                        double VPtotal = Double.parseDouble(request.getParameter("precio"));
                        
                        out.println("$ "+VPtotal);
                    %> 
                </td>
                <!--Tipo de pago-->
                <td>
                    <% 
                        int VTipoPago= Integer.parseInt(request.getParameter("select"));
                        if (VTipoPago == 1){
                            out.println("tarjeta");
                        } else {
                            out.println("Efectivo");
                        }
                        
                        //out.println(VTipoPago);
                        
                    %> 
                </td>
                <!--Descuento/Recargo-->
                <td>
                    <% 
                        if (VTipoPago == 1){
                            out.println("Aplica un recargo del 5%");
                        } else {
                            out.println("Aplica un descuento del 3%");
                        }
                        
                    %> 
                </td>
                <!--Total a pagar-->
                <td>
                    <% 
                        
                        if (VTipoPago == 1){
                            out.println("$ "+(VPtotal + (VPtotal * 0.05)));
                        } else {
                            out.println("$ "+(VPtotal - (VPtotal * 0.03)));
                        }
                        
                    %> 
                </td>
                
                
                
        </table>
    </body>
</html>

