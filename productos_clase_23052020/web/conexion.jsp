<%@page contentType="text/html" pageEncoding="UTF-8"
import ="java.sql.Connection"
import ="java.sql.DriverManager"
import ="java.sql.ResultSet"
import ="java.sql.Statement"
import ="java.sql.SQLException"
%>
<% 
    //
    Connection conex = null;
   // Connection conecta=null;
    Statement sql = null;
    Statement sql2 = null;
    try {
        /* conectamos el Driver */
        Class.forName("com.mysql.jdbc.Driver");
        //conex = (Connection)DriverManager.getConnection("jdbc:mysql://localhost/ejercicio", "root", "");
        /* conectamos con la base de datos*/
       conex = (Connection)DriverManager.getConnection("jdbc:mysql://127.0.0.1/taller","root","");
       /* establecer conexion BdeD */
        sql=conex.createStatement();
        sql2=conex.createStatement();
    } catch (Exception e)
    {
        out.println("error de conexion "+ e);
    }
 %>   
