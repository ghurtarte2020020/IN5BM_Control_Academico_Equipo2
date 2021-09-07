<%-- 
    Document   : AsignacionAlumno
    Created on : 31/08/2021, 10:05:12 AM
    Author     : Windows 10
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
        <script src="https://kit.fontawesome.com/bc893c1d65.js" crossorigin="anonymous"></script>
        <title>Listado Asignacion alumno</title>
    </head>
    <body>
        <jsp:include page="/WEB-INF/paginas/comunes/cabecera.jsp"/>
        <h1>Listado Asignacion alumno</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Alumno</th>
                    <th>Curso</th>
                    <th>Fecha de asignacion</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="asignacionAlumno" items="${listadoAsignacionAlumno}">
                    <tr>
                        <td>${asignacionAlumno.idAsignacion}</td>
                        <td>${asignacionAlumno.nombres} ${asignacionAlumno.apellidos}</td>
                        <td>${asignacionAlumno.descripcion}</td>
                        <td>${asignacionAlumno.fecha_asignacion}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/ServletAsignacionAlumnoController?accion=eliminar&idAsignacion=${asignacionAlumno.idAsignacion}">Eliminar</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <jsp:include page="/WEB-INF/paginas/comunes/pie-pagina.jsp"/>
        <!--Javascript-->
        <script src="../assets/js/jquery-3.6.0.js"></script>
        <script src="../assets/js/bootstrap.bundle.js"></script>
    </body>
</html>
