<%-- 
    Document   : ModEstudiante1
    Created on : 23/05/2020, 07:39:52 AM
    Author     : Juan Rodriguez
--%>

<html>
    <head>
        <title>CAPTURA </title> 
        <link rel="stylesheet" href="estilos.css">
        <link rel="stylesheet" href="estilosJSP.css">
        <script type="text/javascript" src="javascript.js"></script>

        <script language="JavaScript">

            function Validar(formulario) {
                var Codigo = formulario.Codigo.value;
                var largoCodigo = Codigo.length;

                var Apellidos = formulario.Apellidos.value;
                var largoApeliidos = Apellidos.length;

                var Nombres = formulario.Nombres.value;
                var largoNombres = Nombres.length;

                var Telefono = formulario.Telefono.value;
                var largoTelefono = Telefono.length;

                var Correo = formulario.Correo.value;
                var largoCorreo = Correo.length;

                var listabecedario = " ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz@.";
                var listanumeros = "0123456789";
                var listabecedariocorreo = " ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789@.*-/\!#$%&&/()=?¡*¨][_:";

                var cont = 0;



                /*  Validar Codigo */

                if (largoCodigo < 1)
                {

                    alert("Favor ingrese datos al campo codigo ");
                    formulario.Codigo.focus();
                    return (false);

                }
                /*  Validar Valores */
                cont = 0;
                for (h = 0; h < Codigo.length; h++)
                {
                    ch = Codigo.charAt(h);
                    for (k = 0; k < listanumeros.length; k++)

                    {
                        if (ch == listanumeros.charAt(k))

                        {
                            cont = cont + 1;
                            k = listanumeros.length;
                            break;
                        }
                    }
                }
                if (cont < Codigo.length)

                {
                    alert("El campo Codigo tiene caracteres no reconocidos");
                    formulario.Codigo.focus();
                    return (false);
                }

                /*  Validar Apellidos */

                if (largoApeliidos < 1)
                {

                    alert("Favor ingrese datos al campo Apellidos ");
                    formulario.Apellidos.focus();
                    return (false);

                }
                /*  Validar Apellidos */
                cont = 0;
                for (h = 0; h < Apellidos.length; h++)
                {
                    ch = Apellidos.charAt(h);
                    for (k = 0; k < listabecedario.length; k++)

                    {
                        if (ch == listabecedario.charAt(k))

                        {
                            cont = cont + 1;
                            k = listabecedario.length;
                            break;
                        }
                    }
                }
                if (cont < Apellidos.length)

                {
                    alert("El campo Apellidos tiene caracteres no reconocidos");
                    formulario.Apellidos.focus();
                    return (false);
                }



                /*  Validar Nombres */

                if (largoNombres < 1)
                {

                    alert("Favor ingrese datos al campo Nombres ");
                    formulario.Nombres.focus();
                    return (false);

                }
                /*  Validar Nombres */
                cont = 0;
                for (h = 0; h < Nombres.length; h++)
                {
                    ch = Nombres.charAt(h);
                    for (k = 0; k < listabecedario.length; k++)

                    {
                        if (ch == listabecedario.charAt(k))

                        {
                            cont = cont + 1;
                            k = listabecedario.length;
                            break;
                        }
                    }
                }
                if (cont < Nombres.length)

                {
                    alert("El campo Nombres tiene caracteres no reconocidos");
                    formulario.Nombres.focus();
                    return (false);
                }


                /*  Validar Telefonos  */

                if (largoTelefono < 1)
                {
                    alert("Favor ingrese datos en el campo Telefono");
                    formulario.Telefono.focus();
                    return (false);
                }
                cont = 0;
                for (i = 0; i < Telefono.length; i++)
                {
                    ch = Telefono.charAt(i);
                    for (j = 0; j < listanumeros.length; j++)
                    {
                        if (ch == listanumeros.charAt(j))
                        {
                            cont = cont + 1;
                            j = listanumeros.length;
                            break;
                        }
                    }
                }

                if (cont < Telefono.length)
                {
                    alert("El campo Telefono tiene caracteres no reconocidos");
                    formulario.Telefono.focus();
                    return (false);
                }

                /*  Validar Correo */

                if (largoCorreo < 1)
                {

                    alert("Favor ingrese datos al campo Correo ");
                    formulario.Correo.focus();
                    return (false);

                }
                /*  Validar Correo */
                cont = 0;
                for (h = 0; h < Correo.length; h++)
                {
                    ch = Correo.charAt(h);
                    for (k = 0; k < listabecedariocorreo.length; k++)

                    {
                        if (ch == listabecedariocorreo.charAt(k))

                        {
                            cont = cont + 1;
                            k = listabecedariocorreo.length;
                            break;
                        }
                    }
                }
                if (cont < Correo.length)

                {
                    alert("El campo Correo tiene caracteres no reconocidos, solo se permiten estos caracteres: @.*-/\!#$%&&/( )=?¡*][_:");
                    formulario.Correo.focus();
                    return (false);
                }




            }

        </script>

    </head>
    <body>
        <div w3-include-html="header.html"></div> 

        <script>
            includeHTML();
        </script>
        <%@include file="conexion.jsp" %>
        

        <%            
            int vcodigo = Integer.parseInt(request.getParameter("IdEstudiante"));
            String cadena = "select * from estudiantes where IdEstudiante=" + vcodigo;
            ResultSet rs1 = sql.executeQuery(cadena);
            while (rs1.next()) {

        %>


        <FORM name="form1"  ACTION ="ModEstudiante2.jsp" METHOD="POST" onSubmit="return Validar(this)">
            <H2>ACTUALIZACION DE DATOS - ESTUDIANTES</H2>
            <font face="Arial"> 
            <br>
            <br>	   
            <table border="1">
                <tr>	
                    <td>Codigo</td>       
                    <td><input name="Codigo" type="text"   id="Codigo"    title="Codigo" readonly value ="<% out.println(rs1.getInt("IdEstudiante"));%>"></td>
                </tr> 
                <tr>       	
                    <td>Apellidos</td>
                    <td><input name="Apellidos" type="text"  id="Apellidos"  size="20" title="Apellidos" value ="<% out.println(rs1.getString("Apellido"));%>"></td>
                </tr>  	
                <tr>       	
                    <td>Nombres</td>
                    <td><input name="Nombres" type="text"  id="Nombres"  size="20" title="Nombres" value ="<% out.println(rs1.getString("nombre"));%>"></td>
                </tr>  	
                <tr>
                    <td>Telefono</td>
                    <td><input name="Telefono" type="text"  id="Telefono" value ="<% out.println(rs1.getString("telefono"));%>"> </td>
                </tr>
                <tr>
                    <td>Correo</td>
                    <td><input name="Correo"  type="text"  id="Correo" value ="<% out.println(rs1.getString("correo"));%>"> </td>
                </tr>
                <tr>
                    <td><input type="submit" value="Actualizar"></td>
                    <td></td>
                </tr>
            </table>
        </FORM>
        <%
            }
            rs1.close();
        %>
        <br>
        <div w3-include-html="footer.html"></div> 

    </body>
</html>
