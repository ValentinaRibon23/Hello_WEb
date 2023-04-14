<%-- 
    Document   : index
    Created on : Apr 10, 2023, 10:13:42 AM
    Author     : Valentina Contreras
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
            <form name="Registro Entrada" action="response.jsp">
                
                Ingrese el Nombre: <input type="text" name="nombre" value=" " required/>
                <br>
                Ingrese el Apellido:<input type="text" name="apellido" value=" " required/>
                <br>
                Ingrese su fecha de nacimiento
                <br>
                dia :<input type="number" name="dia" min="1" max="31" value=" " required/>
                mes:<input type="number" name="mes"min="1"  max="12" value=" " required/>
                año: <input type="number" name="anio" max="2023" value=" " required/>
               
                    
                <input type="submit" value="ENVIAR" />
            </form> 
        </h1>
    </body>
</html>
