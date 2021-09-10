<%-- 
    Document   : Salon
    Created on : 2/09/2021, 07:39:41 PM
    Author     : Pablo Emmanuel Mich Mux // Codigo Técnico: IN5BM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="../assets/css/style.css">
        <link rel="stylesheet" href="../assets/css/bootstrap.css"> 
        <link rel="icon" type="image/png" href="../assets/images/favicon.png">
        <link rel="icon" type="image/png" href="../assets/images/favicon.png">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
              rel="stylesheet">
        <script src="https://kit.fontawesome.com/bc893c1d65.js" crossorigin="anonymous"></script>
        <title>Listado Salones</title>
    </head>
    <body>
        <jsp:include page="/WEB-INF/paginas/comunes/cabecera.jsp"/>
        <div class="shadow p-3 m-4 fs-3 bg-primary bg-gradient rounded text-center text-white col-11 mx-auto"><i class="fas fa-list"></i> Listado Salones <i class="fas fa-sm fa-chalkboard align-middle"></i></div>
        <div class="table-responsive mb-5 col-11 mx-auto">
            <table class="table table-secondary table-hover align-middle">
                <tr class="table-dark">
                    <th>#</th>
                    <th>capacidad</th>
                    <th>descripcion</th>
                    <th>Nombre del Salon</th>
                    <th></th>
                </tr>
                <tbody>
                    <c:forEach var="salon" items="${listadoSalon}">
                        <tr>
                            <td>${salon.salonId}</td>
                            <td>${salon.capacidad}</td>
                            <td>${salon.descripcion}</td>
                            <td>${salon.nombreSalon}</td>
                            <td> <a class="btn btn-outline-primary" href="${pageContext.request.contextPath}/ServletSalonController?accion=eliminar&salonId=${salon.salonId}"><i class="fas fa-trash"></i>  Eliminar</a>
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
