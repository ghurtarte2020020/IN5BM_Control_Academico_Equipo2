<%-- 
    Document   : estudiante
    Created on : 2/09/2021, 11:06:38 AM
    Author     : Axel Javier Guadalupe Alvarez Felipe
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
        <title>Listado Instructores</title>
    </head>
    <body>
        <jsp:include page="/WEB-INF/paginas/comunes/cabecera.jsp"/>
        <h1>Listado instructores </h1>
        <table border="1">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Apellidos</th>
                    <th>Nombres</th>
                    <th>Direccion</th>
                    <th>Telefono</th>
                </tr>
            </thead>

            <tbody>
                <c:forEach var="instructor" items="${listadoInstructor}">
                    <tr>
                        <td>${instructor.idInstructor}</td>
                        <td>${instructor.apellidos}</td>
                        <td>${instructor.nombres}</td>
                        <td>${instructor.direccion}</td>
                        <td>${instructor.telefono}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/ServletInstructorController?accion=eliminar&idInstructor=${instructor.idInstructor}">Eliminar</a>
                        </td>

                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <!--Javascript-->
        <script src="../assets/js/jquery-3.6.0.js"></script>
        <script src="../assets/js/bootstrap.bundle.js"></script>
    </body>
</html>
