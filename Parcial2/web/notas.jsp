<%-- 
    Document   : notas
    Created on : 2/05/2020, 07:36:55 AM
    Author     : Juan Rodriguez
--%>
  <%@include file="conexion.jsp" %>

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
        
        <FORM name="form1"  ACTION ="notas.jsp" METHOD="POST" >
            <H2>CAPTURA DE DATOS - NOTAS</H2>
            <font face="Arial"> 
            <br>
            <br>	   
            <table border="1">
                <tr>	
                    <td>Codigo de materia</td>     
                    <td> 
                        <select name="codigo" id="codigo">
                            <%                                //consulta codigos materias
                                
                            String consultaCodigo = "select * from materias";
                                //int IDConsulta = 0;
                                ResultSet rsCodigo = sql.executeQuery(consultaCodigo);
                                while (rsCodigo.next()) {
                                    out.println("<option>" + rsCodigo.getString(1) + "</option>");
                                }
                                    
                                
                            
                            
                            %>

                        </select>
                    </td>
                </tr>
                <tr>       	
                    <td>Nombre Materia</td>
                    <td>
                    
                    <select name="Materia" id="Materia">
                        
                            <%    
                                //consulta codigos materias
                                String consultaCodigo2 = "select * from materias";
                                //int IDConsulta = 0;
                                ResultSet rsCodigo2 = sql.executeQuery(consultaCodigo2);
                                while (rsCodigo2.next()) {
                                    out.println("<option>" + rsCodigo2.getString(2) + "</option>");
                                }
                            
                            
                            %>

                        </select>
                            </td>
                    
                </TR>  	
                <tr>       	
                    <td>Nota 1 Corte</td>
                    <td><input name="Nota1" type="numeric" min="0" max="10" step="any" id="Nota1"  size="20" title="Nota1"></td>
                </tr>
                <tr>       	
                    <td>Nota 2 Corte</td>
                    <td><input name="Nota2" type="numeric" min="0" max="10" step="any" id="Nota2"  size="20" title="Nota2"></td>
                </tr> 
                <tr>       	
                    <td>Nota 3 Corte</td>
                    <td><input name="Nota3" type="numeric" min="0" max="10" step="any" id="Nota3"  size="20" title="Nota3"></td>
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
