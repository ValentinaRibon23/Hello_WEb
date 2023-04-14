<%-- 
    Document   : response
    Created on : Apr 10, 2023, 10:19:36 AM
    Author     : Valentina Contreras
--%>


<%@page import="java.time.LocalDateTime"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<%

    Calendar fecha = new GregorianCalendar();
    int anio = fecha.get(Calendar.YEAR);
    int mes = fecha.get(Calendar.MONTH);
    int dia = fecha.get(Calendar.DAY_OF_MONTH);
    LocalDateTime locaDate = LocalDateTime.now();
    int hora = locaDate.getHour();
    int minutos = locaDate.getMinute();
    int segundos = locaDate.getSecond();
    int anio_nacimiento = Integer.parseInt(request.getParameter("anio"));
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
            <jsp:useBean id="mybean" scope="session" class="co.edu.unipiloto.metodos.hello.NameHandler" />
            <jsp:setProperty name="mybean" property="nombre" />
            <jsp:setProperty name="mybean" property="apellido" />
            <jsp:setProperty name="mybean" property="dia" />
            <jsp:setProperty name="mybean" property="mes" />
            <jsp:setProperty name="mybean" property="anio" />


            <c:set var = "vlHora" value = "<%= hora%>"/>
            <c:choose>
                <c:when test="${vlHora > 0 && vlHora < 12}">
                                       
                    <c:out value="Buenos dias!!"></c:out>
                </c:when>
                <c:when test="${vlHora >= 12 && vlHora < 19}">
                    
                    <c:out value="Buenas tardes!!"></c:out>
                </c:when>
                <c:otherwise>
                    
                    <c:out value="Buenas noches!!"></c:out>
                </c:otherwise>
            </c:choose>  
            <br>
            Hola,  <jsp:getProperty name="mybean" property="nombre" />
            <br>
            Su apellido es,   <jsp:getProperty name="mybean" property="apellido" />
            <br>
            Su fecha de nacimiento es:

            <jsp:getProperty name="mybean" property="dia" />/<jsp:getProperty name="mybean" property="mes" />/<jsp:getProperty name="mybean" property="anio" />

            <br>
            Su edad es, <%= (anio - anio_nacimiento) + "  años"%>
            <br>
            Fecha de registro: <%= dia + "/" + (mes + 1) + "/" + anio%>
            <br>
            Hora de registro: <%= hora + ":" + minutos + ":" + segundos%>

        </h1>
    </body>
</html>

