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
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="../assets/css/style.css">
        <link rel="stylesheet" href="../assets/css/barra-navegacion.css">
        <link rel="stylesheet" href="../assets/css/bootstrap.css"> 
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
              rel="stylesheet">
        <title>Listado Carreras</title>
    </head>
    <body>
        <jsp:include page="/WEB-INF/paginas/comunes/cabecera.jsp"/>
        <h1>Listado Carreras</h1>
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
        <!--Javascript-->
        <script src="../assets/js/jquery-3.6.0.js"></script>
        <script src="../assets/js/bootstrap.bundle.js"></script>
    </body>
</html>
