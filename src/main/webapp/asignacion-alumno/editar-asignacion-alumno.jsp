<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<fmt:formatDate pattern = "yyyy-MM-dd hh:mm:ss" 
                value = "${now}" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="./assets/css/style.css">
        <link rel="stylesheet" href="./assets/css/bootstrap.css"> 
        <link rel="icon" type="image/png" href="./assets/images/favicon.png">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons"rel="stylesheet">
        <script src="https://kit.fontawesome.com/bc893c1d65.js" crossorigin="anonymous"></script>




        <title>Editar Asignaciones</title>
    </head>
    <body>
        <jsp:include page="/WEB-INF/paginas/comunes/cabecera.jsp"/>
        <div class="shadow p-3 m-4 fs-3 bg-primary bg-gradient rounded text-center text-white col-11 mx-auto"><i class="fas fa-list"></i> Editar Asignaciones <i class="fas fa-sm fa-user-clock align-middle"></i></div>

        <form method="POST" action="${pageContext.request.contextPath}/ServletAsignacionAlumnoController" class="was-validated">

            <div class="mb-3">
                <label for="id" class="form-label">Id asignación</label>
                <input type="text" class="form-control" name="idAsignacion" id="id" value="${asignacionAlumno.idAsignacion}" readonly>
            </div>
            <div class="mb-3">
                <label for="carne" class="form-label">Carné del alumno</label>
                <select class="form-select"   name="carne" id="mibuscador carne" data-placeholder="- Seleccione un alumno -"  required>
                    <option value="${asignacionAlumno.carne}">Carné: ${asignacionAlumno.carne} | Alumno: ${asignacionAlumno.nombres} ${asignacionAlumno.apellidos} </option>
                    <c:forEach var="alumno" items="${listadoAlumno}">
                        <option value="${alumno.carne}">Carné: ${alumno.carne} | Alumno: ${alumno.nombres} ${alumno.apellidos}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="mb-3">
                <label for="curso" class="form-label">Curso</label>
                <select class="form-select" name="idCurso" id="curso" required>
                    <option selected value="${asignacionAlumno.idCurso}">ID: ${asignacionAlumno.idCurso} | Curso: ${asignacionAlumno.descripcion}</option>
                    <c:forEach var="curso" items="${listadoCursos}">
                        <option value="${curso.idCurso}">ID: ID: ${curso.idCurso} | Ciclo: ${curso.ciclo} | Cupo max: ${curso.cupoMaximo} | Cupo min: ${curso.cupoMinimo} | Curso: ${curso.descripcion}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="mb-3">
                <label for="fecha_asignacion" class="form-label">Fecha Asignación</label>
                <input type="datetime-local" class="form-control" id="fecha_asignacion" name="fecha_asignacion" value="${asignacionAlumno.fecha_asignacion}" fmt:formatDate pattern = "yyyy-MM-dd HH:mm:ss">
            </div>
            <input type="hidden" name="idAsignacion" value="${asignacionAlumno.idAsignacion}">
            <input type="hidden" name="accion" value="actualizar">


            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
            <button type="submit" class="btn btn-primary">Guardar</button>

        </form>




        <jsp:include page="/WEB-INF/paginas/comunes/pie-pagina.jsp"/>
        <!--Javascript-->
        <script src="./assets/js/jquery-3.6.0.js"></script>
        <script src="./assets/js/bootstrap.bundle.js"></script>



    </body>
</html>
