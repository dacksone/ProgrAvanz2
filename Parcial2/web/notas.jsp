<%-- 
    Document   : notas
    Created on : 2/05/2020, 07:36:55 AM
    Author     : Juan Rodriguez
--%>
<%@include file="conexion.jsp" %>


<%//consulta  materias                                
    //String ConsMaterias = "select * from materias";
    //ResultSet rsMaterias = sql.executeQuery(ConsMaterias);
    //consulta  estudiantes                                
    //String ConsEstudiantes = "select * from estudiantes";
    //ResultSet rsEstudiantes = sql.executeQuery(ConsEstudiantes);
    //consulta  profesores                                
    //String ConsProfesores = "select * from profesores";
    //ResultSet rsProfesores = sql.executeQuery(ConsProfesores);

%>



<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="estilos.css">
        <link rel="stylesheet" href="estilosJSP.css">
        <script type="text/javascript" src="javascript.js"></script>
    </head>
    <body>

        <%@include file="header.html" %>

        <FORM name="form1"  ACTION ="notas1.jsp" METHOD="POST" >
            <H2>CAPTURA DE DATOS - NOTAS</H2>
            <font face="Arial"> 
            <br>
            <br>	   
            <table border="1">
                <tr>	
                    <td>Materia</td>     
                    <td> 
                        <select name="materia" id="materia">
                            <%                                String ConsMaterias = "select * from materias";
                                ResultSet rsMaterias = sql.executeQuery(ConsMaterias);
                                while (rsMaterias.next()) {
                            %>
                            <option value="<%=rsMaterias.getInt("codigo")%>"><%=rsMaterias.getString("nombre")%></option>                    
                            <%
                                }

                                rsMaterias.close();

                            %>

                        </select>
                    </td>
                </tr>
                <tr>       	
                    <td>Estudiantes</td>
                    <td>

                        <select name="estudiante" id="estudiante">

                            <%                                //consulta  estudiantes                                
                                String ConsEstudiantes = "select * from estudiantes";
                                ResultSet rsEstudiantes = sql.executeQuery(ConsEstudiantes);
                                while (rsEstudiantes.next()) {
                            %>
                            <option value="<%=rsEstudiantes.getInt("IdEstudiante")%>"><%=rsEstudiantes.getString("nombre")%></option>                    
                            <%
                                }

                                rsEstudiantes.close();

                            %>

                        </select>
                    </td>

                </TR>  
                <tr>       	
                    <td>Profesor</td>
                    <td>

                        <select name="profesor" id="profesor">

                            <%                                //consulta  profesores   
                                String ConsProfesores = "select * from profesores";
                                ResultSet rsProfesores = sql.executeQuery(ConsProfesores);
                                while (rsProfesores.next()) {
                            %>
                            <option value="<%=rsProfesores.getInt("IdProfesor")%>"><%=rsProfesores.getString("nombre")%></option>                    
                            <%
                                }

                                rsProfesores.close();

                            %>

                        </select>
                    </td>

                </TR>  
                <tr>       	
                    <td>Nota 1 Corte</td>
                    <td><input name="Nota1" type="numeric" min="0" max="10" step="any" id="Nota1" placeholder="valor entre 0 a 10" size="20" title="Nota1"></td>
                </tr>
                <tr>       	
                    <td>Nota 2 Corte</td>
                    <td><input name="Nota2" type="numeric" min="0" max="10" step="any" id="Nota2" placeholder="valor entre 0 a 10"   size="20" title="Nota2"></td>
                </tr> 
                <tr>       	
                    <td>Nota 3 Corte</td>
                    <td><input name="Nota3" type="numeric" min="0" max="10" step="any" id="Nota3" placeholder="valor entre 0 a 10"  size="20" title="Nota3"></td>
                </tr> 


                <tr>
                    <td><input type="submit" value="Enviar"></td>
                    <td></td>
                </tr>
            </table>
        </FORM>
        <br>
        <div w3-include-html="footer.html"></div> 
    </body>
</html>
