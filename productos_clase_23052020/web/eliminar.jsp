<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexion.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>        
    <% 
          int vcodigo = Integer.parseInt(request.getParameter("idProducto"));          
          String cadena = "delete from productos where idProducto = "+vcodigo;
          sql.executeUpdate(cadena);
          out.println("Registro eliminado correctamente "+ "<a href='index.html'> Regresar </a>");                    
     %>
    </body>
</html>