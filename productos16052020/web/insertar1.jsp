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
          String vnombre = request.getParameter("nombre");
          
          double vValor = Double.parseDouble(request.getParameter("valor"));
          double vIva = Double.parseDouble(request.getParameter("iva"));
          double descuento = Double.parseDouble(request.getParameter("descuento"));
          
          if(vcodigo!=0 && vnombre!=null)
          {
            String cadena = "insert into productos(idProducto,nombreproducto, valorproducto, ivaproducto,descuento) values( "+vcodigo + ",'"+vnombre+"'," + vValor + ","+vIva+","+descuento+" )";
            sql.executeUpdate(cadena);
            out.println("datos registrados"+ "<a href='index.html'> Regresar </a>");
          }
          
     %>
    </body>
</html>
