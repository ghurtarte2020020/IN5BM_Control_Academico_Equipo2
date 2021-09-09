<%-- 
    Document   : horario
    Created on : Sep 1, 2021, 5:52:21 PM
    Author     : Cristian Morales
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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
        <title>Listado Horarios</title>
    </head>
    <body>
        <jsp:include page="/WEB-INF/paginas/comunes/cabecera.jsp"/>
        <div class="shadow p-3 m-4 fs-3 bg-primary bg-gradient rounded text-center text-white">Listado de Horarios</div>
        <table class="table table-secondary table-hover table-responsive allign-middle mb-5"> 
            <thead class="table-dark">
                <tr>
                    <th>ID</th>
                    <th>Horario Inicio</th>
                    <th>Horario Salida</th>
                    <th>Eliminar</th>

                </tr>                                
            </thead>
            <tbody>
                <c:forEach var="horario" items="${listadoHorarios}">
                    <tr>

                        <td>${horario.idHorario}</td>
                        <td>${horario.horarioInicio}</td>
                        <td>${horario.horarioSalida}</td> 
                        
                        <td>
                            <a class="btn btn-outline-primary" href="${pageContext.request.contextPath}/ServletHorarioController?accion=eliminar&idHorario=${horario.idHorario}">Eliminar</a>
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
