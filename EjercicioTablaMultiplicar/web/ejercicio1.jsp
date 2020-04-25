<%-- 
    Document   : ejercicio1
    Created on : 3/04/2020, 03:41:43 PM
    Author     : Alexis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
  <% 
          String Vnombre = request.getParameter("nombre");
          int Vedad = Integer.parseInt(request.getParameter("edad"));
          int Vtabla = Integer.parseInt(request.getParameter("tabla"));
          
          if(Vedad!=0 && Vnombre!=null)
          { 
            out.println("Mi nombre es :"+Vnombre + " y tengo " + Vedad + " anios"+ "<br>");   
          }
          
          //tabla de multiplicar
          
          out.println("Tabla de multiplicar del: "+Vtabla+"<br>");
          out.println("<table border='1'");
          for(int i = 0; i<=10; i++)
        {
            out.println("<tr>");
            out.println("<td>"+Vtabla+"</td>" +"<td>"+ " x "+"</td>"+"<td>"+i+"</td>"+"<td>"+" = "+"</td>" +"<td>" +Vtabla*i+"<br>"+"</td>");
            out.println("</tr>");           
        }
          out.println("</table>");
          
        out.println("<a href='index.html'> Regresar </a>");
        
     %>        
    </body>
</html>
