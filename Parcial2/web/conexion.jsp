<%-- 
    Document   : conexion
    Created on : 9/05/2020, 08:19:46 AM
    Author     : Juan Rodriguez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.sql.Connection"
        import="java.sql.DriverManager"
        import="java.sql.ResultSet"
        import="java.sql.Statement"
        import="java.sql.SQLException"


        %>

<%
    Connection conex = null;
    Statement sql = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conex = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/EjercicioJSP", "root", "");
        sql = conex.createStatement();
        out.print("Conexion Establecida");
    } catch (Exception e) {
        out.print("error en la conexion " + e);
    }
%>



