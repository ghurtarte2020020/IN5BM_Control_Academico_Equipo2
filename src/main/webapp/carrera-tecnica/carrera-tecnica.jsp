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
        <script src="https://kit.fontawesome.com/bc893c1d65.js" crossorigin="anonymous"></script>
        <title>Listado Carreras</title>
    </head>
    <body>
        <jsp:include page="/WEB-INF/paginas/comunes/cabecera.jsp"/>
        <div class="shadow p-3 m-4 fs-3 bg-primary bg-gradient rounded text-center text-white">Listado Carreras</div>
        <table class="table table-secondary table-hover table-responsive align-middle mb-5">
            <thead class="table-dark">
                <tr>
                    <th >#</th>
                    <th >nombre</th>
                    <th > </th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="carrera" items="${listadoCarrera}">
                    <tr>
                        <td>${carrera.codigo_carrera}</td>
                        <td>${carrera.nombre}</td>
                        <td>
                            <a class="btn btn-outline-primary" href="${pageContext.request.contextPath}/ServletCarreraTecnicaController?accion=eliminar&codigo_carrera=${carrera.codigo_carrera}">Eliminar</a>
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
