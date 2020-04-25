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
        
        <h1>Datos del formulario</h1>
        <table border=0>
            <!-- Inicio formulario -->
            <!-- Titulos -->
            <tr >
                <th>Nombre Campo</th>
                <th>Resultado</th>>
            </tr>
            
            <!-- Campo Nombre -->
            
            <tr>
                <td>Nombre:</td>
                <td>
                    <% 
                        String Vnombre= request.getParameter("nombre");
                        out.println(Vnombre);
                    %> 
                </td>
                
            </tr>
            <!-- Campo Apellido -->
            <tr>
              <td>Apellido:</td>
                <td>
                    <% 
                        String Vapellido= request.getParameter("apellido");
                        out.println(Vapellido);
                    %> 
                </td>  
            </tr>
            <!-- Campo Cedula -->
            <tr>
              <td>Cedula</td>
                <td>
                    <% 
                        int Vcedula= Integer.parseInt(request.getParameter("cedula"));
                        out.println(Vcedula);
                    %> 
                </td>  
            </tr>
            <!-- Campo Apellido -->
            <tr>
              <td>Password:</td>
                <td>
                    <% 
                        String Vpassword= request.getParameter("password");
                        out.println(Vpassword);
                    %> 
                </td>  
            </tr>
            <!-- Campo password1 -->
            <tr>
              <td>Password1:</td>
                <td>
                    <% 
                        String Vpassword1= request.getParameter("password1");
                        out.println(Vpassword1);
                    %> 
                </td>  
            </tr>
            <!-- Campo Fecha nacimiento -->
            <tr>
              <td>Fecha Nacimiento:</td>
                <td>
                    <% 
                        String Vfnacimiento= request.getParameter("FechaNacimiento");
                        out.println(Vfnacimiento);
                    %> 
                </td>  
            </tr>
            <!-- Campo Genero -->
            <tr>
              <td>Genero:</td>
                <td>
                    <% 
                        
                        String Vresult=" ";
                        int Vgenero = Integer.parseInt(request.getParameter("genero"));
                        if (Vgenero == 1)
                            {
                                Vresult = "Masculino";
                            } 
                        else{
                            Vresult = "Femenino";
                        }     
                        out.println(Vresult);
                        
                        
                        //out.println(Vgenero);
                    %> 
                </td>  
            </tr>
            <!-- Campo Mensaje -->
            <tr>
              <td>Mensaje:</td>
                <td>
                    <% 
                        String Vmensaje= request.getParameter("mensaje");
                        out.println(Vmensaje);
                    %> 
                </td>  
            </tr>
            <!-- Fin formulario -->
        </table>
    </body>
</html>
