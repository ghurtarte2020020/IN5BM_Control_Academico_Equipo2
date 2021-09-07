<%-- 
    Document   : Alumno
    Created on : 31-ago-2021, 20:55:03
    Author     : ricardo
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
        <title>Listado Alumnos</title>
    </head>
    <body>
        <jsp:include page="/WEB-INF/paginas/comunes/cabecera.jsp"/>
        <h1>Listado Alumnos</h1>
        <table border "1">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Apellidos</th>
                    <th>Nombres</th>
                    <th>Email</th>
                    <th> </th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="alumno" items="${listadoAlumno}">
                    <tr>
                        <td>${alumno.carne}</td>
                        <td>${alumno.apellidos}</td>
                        <td>${alumno.nombres}</td>
                        <td>${alumno.email}</td>
                        <td><a href="${pageContext.request.contextPath}/ServletAlumnoController?accion=eliminar&carne=${alumno.carne}">Eliminar</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <!--Javascript-->
        <script src="../assets/js/jquery-3.6.0.js"></script>
        <script src="../assets/js/bootstrap.bundle.js"></script>
    </body>
</html>
