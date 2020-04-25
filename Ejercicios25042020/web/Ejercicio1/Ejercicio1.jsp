<%-- 
    Document   : Ejercicio1
    Created on : 25/04/2020, 03:33:41 PM
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
                <h1 >Ejercicio 1 </h1>
            </header>
            <section id="sectionleft">          
                <H2>Tabla informativa de descuentos</H2>
                <font face="Arial">
                <br>
                <table border="2">
                    <tr>
                        <th>Descripción </td>
                        <th>Porcentaje(%)</td>
                    </tr>

                    <tr>
                        <td>Para monitores o teclados: </td>
                        <td>0.9%</td>
                    </tr>
                </table>
            </section>

            
            <div>

                <H2>Tabla de productos</H2>
                <font face="Arial">
                <br>
                <table border="2">
                    <tr>
                       
                        <th>Tipo de articulo</th>
                        <th>Descuento si aplica</th>
                        <th>Precio</td>
                    </tr>

                    <tr>
                        
                        
                        <!--Tipo de articulo -->
                        <td>
                            <%
                                int vTipArticulo = Integer.parseInt(request.getParameter("select"));
                                if (vTipArticulo == 1){
                                    out.println("Monitor");
                                }else if (vTipArticulo == 2){
                                    out.println("Teclado");
                                }else if (vTipArticulo == 3){
                                    out.println("Mouse");
                                }else if (vTipArticulo == 4){
                                    out.println("Camara");
                                }else if (vTipArticulo == 5){
                                    out.println("Impresora");
                                }
                            %>                
                        </td>
                        <!--Aplica descuento? -->
                        <td>
                            <%
                                
                                if ((vTipArticulo == 1) || (vTipArticulo == 2)){
                                    
                                    out.println("Si aplica");
                                    } else {
                                            out.println("No aplica");
                                            }
                                
                            %>                
                        </td>
                        <!--precio -->
                        <td>
                            
                            <%
                                
                                double vPrecio = Double.parseDouble(request.getParameter("precio"));
                                double ValorTotal = 0;
                                if ((vTipArticulo == 1) ||(vTipArticulo == 2) ){
                                    ValorTotal = vPrecio-(vPrecio*0.09);
                                    out.println(ValorTotal);
                                } else {
                                    ValorTotal = vPrecio;
                                    out.println(ValorTotal);
                                }
                            %>    
                             
                        </td>
                    </tr>
                </table>
                <div>
                    </body>
                    </html>
