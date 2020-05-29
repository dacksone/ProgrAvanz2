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
          String cadena = "select idproducto,nombreproducto,valorproducto,ivaproducto,idproveedor1 from productos where idproducto="+vcodigo;
          String cadena1 = "select * from proveedores";
          ResultSet rs2 = sql2.executeQuery(cadena1);
          ResultSet rs = sql.executeQuery(cadena);
    out.println("<form name ='Productos' action ='modificar2.jsp' method ='post' >");
    while (rs.next()) 
    {
     %>   
        Id Producto <input type = "text" name ="idProducto" readonly value="<% out.println(rs.getInt("idproducto"));%>" > <br>
        Nombre <input type ="text" name ="nombre"  value="<% out.println(rs.getString("nombreproducto"));%>" > <br>        
        Valor <input type = "text" name ="valor" value="<% out.println(rs.getString("valorproducto"));%>" ><br>
        Iva <input type ="text" name ="iva" value="<% out.println(rs.getString("ivaproducto"));%>" > <br> 
            Proveedor:
            <select name="idprove">
            <%
            while (rs2.next()) {
            %>
            <option value="<%=rs2.getInt("idproveedor")%>"><%=rs2.getString("nomproveedor")%></option>                    
            <%                    
                }                                               
            %>
            </select>
            <br>           
       <input type="submit" value ="actualizar" /> 
       <%
      }
        out.println("</form>");              
                rs.close();
                rs2.close(); 
                sql.close();
                sql2.close();
                conex.close();
     %>
    </body>
</html>
