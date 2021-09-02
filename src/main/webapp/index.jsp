<%-- 
    Document   : index
    Created on : 30/08/2021, 07:11:36 AM
    Author     : gabri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>¡Bienvenidos!</h1>
        <a href="${pageContext.request.contextPath}/ServletCarreraTecnicaController?accion=listar">Listar Carreras</a>
    </body>
</html>
