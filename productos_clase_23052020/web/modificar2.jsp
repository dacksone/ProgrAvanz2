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
          int vprove = Integer.parseInt(request.getParameter("idprove"));
          if(vcodigo!=0 && vnombre!=null)
          {              
            String cadena = "update productos set nombreproducto ='"+vnombre+"',valorproducto="+vValor+",ivaproducto="+vIva+ ",idproveedor1="+vprove +" where idproducto ="+vcodigo;
            sql.executeUpdate(cadena);
            out.println("datos atualizados"+ "<a href='index.html'> Regresar </a>");
          }          
     %>
    </body>
</html>
