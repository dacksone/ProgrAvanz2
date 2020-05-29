<%@include file="conexion.jsp" %>
<%
ResultSet rs = sql.executeQuery("select idproducto,nombreproducto, valorproducto, ivaproducto from productos");
out.println("<table border=1>");
out.println("<tr><td>idProducto</td><td>Nombre</td><td>valor</td><td>iva</td><td>eliminar</td></tr>");
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
   out.println("<td><a href=eliminar.jsp?idProducto=" + rs.getInt("idProducto") + "> eliminar </a></td>"); 
   out.println("</tr>");   
}
out.println("</table>");
rs.close();
sql.close();
conex.close();
%>
<br>
<a href='index.html'> Regresar </a>
