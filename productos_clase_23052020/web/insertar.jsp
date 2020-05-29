<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="conexion.jsp" %>
<html>
    <head>
        <title>JSP Page</title>
    </head>
    <body>    
        <%
            ResultSet rs = sql.executeQuery("select * from proveedores");
            %>
        <form name ="Productos" action ="insertar1.jsp" method ="post" >
            Id Producto <input type = "text" name ="idProducto" > <br>
            Nombre <input type ="text" name ="nombre" > <br>
            Valor <input type = "text" name ="valor" > <br>
            Iva <input type ="text" name ="iva" > <br>
            Proveedor:
            <select name="idprove">
            <%
            while (rs.next()) {
            %>
            <option value="<%=rs.getInt("idproveedor")%>"><%=rs.getString("nomproveedor")%></option>                    
            <%                    
                }                                               
            %>
            </select>
            <br>
            <input type="submit" value ="grabar" />                           
        </form>
            <%
                rs.close();
                sql.close();
                conex.close();
             %>
    </body>
</html>
