<%-- 
    Document   : carrera-tecnica
    Created on : 1/09/2021, 10:40:55 PM
    Author     : gabri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LISTADO DE CARRERAS</title>
    </head>
    <body>
        <h1>Listado de Carreras:</h1>
        <table border "1">
            <thead>
                <tr>
                    <th>#</th>
                    <th>nombre</th>
                    <th> </th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="carrera" items="${listadoCarrera}">
                    <tr>
                        <td>${carrera.codigo_carrera}</td>
                        <td>${carrera.nombre}</td>
                        <td><a href="${pageContext.request.contextPath}/ServletCarreraTecnicaController?accion=eliminar&codigo_carrera=${carrera.codigo_carrera}">Eliminar</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>