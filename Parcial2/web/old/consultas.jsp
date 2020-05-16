<%-- 
    Document   : consultas
    Created on : 16/05/2020, 10:01:10 AM
    Author     : Juan Rodriguez
--%>

<%@include file="conexion.jsp" %>

<%
    //consulta codigos materias
    String consultaMaterias = "select * from materias" ;
                        //int IDConsulta = 0;
                        ResultSet rs = sql.executeQuery(consultaMaterias);
                        while (rs.next()) {
                            out.println("<option>"+rs.getString(2)+"</option>");
                        }



%>

