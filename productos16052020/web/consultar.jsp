<%@include file="conexion.jsp" %>
<%
ResultSet rs = sql.executeQuery("select idproducto,nombreproducto, valorproducto, ivaproducto , descuento from productos");
out.println("<table border=1>");
out.println("<tr><td>idProducto</td><td>Nombre</td><td>valor</td><td>iva</td><td>Descuento</td></tr>");
while (rs.next()) {
   out.println("<tr>");       
   out.println("<td>");            
   out.println(rs.getInt("idproducto"));
   out.println("</td><td>");
   out.println(rs.getString("nombreproducto"));   
   out.println("</td><td>");
   out.println(rs.getString("valorproducto"));   
   out.println("</td><td>");
   out.println(rs.getString("ivaproducto"));   
   out.println("</td>");
   out.println("</td><td>");
   out.println(rs.getFloat("descuento"));   
   out.println("</td>");
    out.println("</tr>");   
}
out.println("</table>");
rs.close();
sql.close();
conex.close();
%>
<br>
<a href='index.html'> Regresar </a>