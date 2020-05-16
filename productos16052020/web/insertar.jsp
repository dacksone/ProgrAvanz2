<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
    </head>
    <body>    
        <form name ="Productos" action ="insertar1.jsp" method ="post" >
            Id Producto <input type = "text" name ="idProducto" > <br>
            Nombre <input type ="text" name ="nombre" > <br>
            Valor <input type = "text" name ="valor" > <br>
            Iva <input type ="text" name ="iva" > <br>
            Descuento <input type ="text" name ="descuento" > <br>
            <input type="submit" value ="grabar" />                           
        </form>
    </body>
</html>
