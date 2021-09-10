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
        <link rel="stylesheet" href="../assets/css/bootstrap.css"> 
        <link rel="icon" type="image/png" href="../assets/images/favicon.png">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
              rel="stylesheet">
        <script src="https://kit.fontawesome.com/bc893c1d65.js" crossorigin="anonymous"></script>
        <title>Listado Asignaciones</title>
    </head>
    <body>
        <jsp:include page="/WEB-INF/paginas/comunes/cabecera.jsp"/>
        <div class="shadow p-3 m-4 fs-3 bg-primary bg-gradient rounded text-center text-white col-11 mx-auto"><i class="fas fa-list"></i> Listado Asignaciones <i class="fas fa-sm fa-user-clock align-middle"></i></div>
        <div class="table-responsive mb-5 col-11 mx-auto">
            <table class="table table-secondary table-hover table-responsive align-middle">
                <thead class="table-dark">
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
                                <a class="btn btn-outline-primary" href="${pageContext.request.contextPath}/ServletAsignacionAlumnoController?accion=eliminar&idAsignacion=${asignacionAlumno.idAsignacion}"><i class="fas fa-trash"></i>  Eliminar</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

        <jsp:include page="/WEB-INF/paginas/comunes/pie-pagina.jsp"/>
        <!--Javascript-->
        <script src="../assets/js/jquery-3.6.0.js"></script>
        <script src="../assets/js/bootstrap.bundle.js"></script>
    </body>
</html>
