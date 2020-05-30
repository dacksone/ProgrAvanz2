<%-- 
    Document   : ModNotas1
    Created on : 29/05/2020, 11:16:24 PM
    Author     : Juan Rodriguez
--%>


<%@include file="conexion.jsp" %>

<%     
    /*
int vcodigo = Integer.parseInt(request.getParameter("IdNota"));

     String cadena = "select * from notas where IdNota=" + vcodigo;
     ResultSet rs1 = sql.executeQuery(cadena);
     while (rs1.next()) {
     */

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

        <div w3-include-html="header.html"></div> 

        <script>
            includeHTML();
        </script>

        <FORM name="form1"  ACTION ="notas1.jsp" METHOD="POST" >
            <H2>Modificar - NOTAS</H2>
            <font face="Arial"> 
            <br>
            <br>	   
            <table border="1">
                <tr>	
                    <td>Materia</td>     
                    <td> 
                        <select name="materia" id="materia">
                            <%                                
                                //String ConsMaterias = "select * from materias";
                                //ResultSet rsMaterias = sql.executeQuery(ConsMaterias);
                                //while (rsMaterias.next()) {
                                    int vcodigo = Integer.parseInt(request.getParameter("IdNota"));

                                    String cadena = "select * from notas where IdNota=" + vcodigo;
                                    ResultSet rs1 = sql.executeQuery(cadena);
                                    while (rs1.next()) {
                            %>
                            <option selected="<%=rs1.getInt("codigo")%>"<%
                            }
                                rs1.close();
                                
                                String ConsMaterias = "select * from materias";
                                ResultSet rsMaterias = sql.executeQuery(ConsMaterias);
                                while (rsMaterias.next()) {
                            
                            %> value="<%=rsMaterias.getInt("codigo")%>"><%=rsMaterias.getString("nombre")%></option>                    
                            <%
                                

                                
                                }
                                rsMaterias.close();
                                //rs1.close();

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

        <%                                
            //rs1.close();
%>
        <br>
        <div w3-include-html="footer.html"></div> 
    </body>
</html>

