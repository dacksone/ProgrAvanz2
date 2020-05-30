<%-- 
    Document   : profesores1
    Created on : 16/05/2020, 10:38:36 AM
    Author     : Juan Rodriguez
--%>


<html>
    <head>
        <script type="text/javascript" src="javascript.js"></script>
        <link rel="stylesheet" href="estilos.css">
        <link rel="stylesheet" href="estilosJSP.css">
        <script type="text/javascript" src="javascript.js"></script>
    </head>
    <body>



        <%@include file="conexion.jsp" %>


<%@include file="header.html" %>


        

        <FORM name="form1"  ACTION ="profesores1.jsp" METHOD="POST" onSubmit="return Validar(this)">
            <H2>CAPTURA DE DATOS - PROFESOR</H2>
            <font face="Arial"> 
            <br>
            <br>	   
            <table border="1">
                <tr>	
                    <td>Codigo</td>       
                    <td><input name="Codigo" type="text"   id="Codigo"    size="50" title="Codigo"></td>
                </TR> 
                <tr>       	
                    <td>Nombres</td>
                    <td><input name="Nombres" type="text"  id="Nombres"  size="20" title="Nombres"></td>
                </TR> 
                <tr>       	
                    <td>Apellidos</td>
                    <td><input name="Apellidos" type="text"  id="Apellidos"  size="20" title="Apellidos"></td>
                </TR>  	

                <tr>
                    <td>Telefono</td>
                    <td><input name="Telefono" type="numeric"  id="Telefono"> </td>
                </tr>
                
                <tr>
                    <td>Correo</td>
                    <td><input name="Correo" type="text"  id="Correo"> </td>
                </tr>
                
                <tr>
                    <td>Especialidad</td>
                    <td><input name="Especialidad" type="text"  id="Especialidad"> </td>
                </tr>
                <!--<tr>
                    <td>Materia</td>
                    <td> 
                        <select name="Materia" id="Materia">
                            <%                                //consulta codigos materias
                                /*
                            String consultaMaterias = "select * from materias";
                                //int IDConsulta = 0;
                                ResultSet rs = sql.executeQuery(consultaMaterias);
                                while (rs.next()) {
                                    out.println("<option>" + rs.getString(2) + "</option>");
                                }
                            */
                            
                            %>

                        </select>
                    </td>
                </tr>
                -->
                <tr>
                    <td><input type="submit" value="Enviar"></td>
                    <td></td>
                </tr>
            </table>
        </FORM>
        <br>
        


        
    </body>
    <div w3-include-html="footer.html"></div> 

    

</html>








