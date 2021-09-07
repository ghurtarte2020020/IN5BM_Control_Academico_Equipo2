<%-- 
    Document   : Cursos
    Created on : 30/08/2021, 06:43:15 PM
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
        <script src="https://kit.fontawesome.com/bc893c1d65.js" crossorigin="anonymous"></script>
        <title>Listado Cursos</title>
    </head>
    <body>
        <jsp:include page="/WEB-INF/paginas/comunes/cabecera.jsp"/>
        <div class="shadow p-3 m-4 fs-3 bg-primary bg-gradient rounded text-center text-white">Listado Cursos</div>
        <table class="table table-secondary table-hover table-responsive align-middle mb-5">
            <thead class="table-dark">
                <tr>
                    <th>#</th>
                    <th>Ciclo</th>
                    <th>Cupo Maximo</th>
                    <th>Cupo Minimo</th>
                    <th>Descripción</th>
                    <th>Carrera</th>
                    <th>Horario inicio</th>
                    <th>Horario final</th>
                    <th>Instructor</th>
                    <th>Salon</th>
                    <th></th>
                </tr>

            </thead>
            <tbody>
                <c:forEach var="curso" items="${listadoCursos}">
                    <tr>
                        <td>${curso.idCurso}</td>
                        <td>${curso.ciclo}</td>
                        <td>${curso.cupoMaximo}</td>
                        <td>${curso.cupoMinimo}</td>
                        <td>${curso.descripcion}</td>
                        <td>${curso.carrera}</td>
                        <td>${curso.horarioInicio}</td>
                        <td>${curso.horarioFinal}</td>
                        <td>${curso.instructor}</td>
                        <td>${curso.nombreSalon}</td>
                        <td><a class="btn btn-outline-primary"  href="${pageContext.request.contextPath}/ServletCursosController?accion=eliminar&idCurso=${curso.idCurso}">Eliminar</a></td>
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
