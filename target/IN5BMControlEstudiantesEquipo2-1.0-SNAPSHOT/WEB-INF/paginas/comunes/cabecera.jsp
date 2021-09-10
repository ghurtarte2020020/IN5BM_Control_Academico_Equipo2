
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand d-lg-none" href="${pageContext.request.contextPath}/index.jsp"
           >Control Academico <i class="material-icons md-30">school</i></a
        >
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
            <a class="navbar-brand d-none d-lg-block "href="${pageContext.request.contextPath}/index.jsp"
               >Control <i class="material-icons md-30">school</i>&nbsp Academico</a
            >
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link"
                       href="${pageContext.request.contextPath}/ServletInstructorController?accion=listar"
                       >Instructores <i class="fas fa-sm fa-chalkboard-teacher"></i></a
                    >
                </li >
                <li class="nav-item">
                    <a class="nav-link"
                       href="${pageContext.request.contextPath}/ServletSalonController?accion=listar"
                       >Salones <i class="fas fa-sm fa-chalkboard"></i></a
                    >
                </li >
                <li class="nav-item">
                    <a class="nav-link"s
                       href="${pageContext.request.contextPath}/ServletHorarioController?accion=listar"
                       >Horarios <i class="fas fa-sm fa-clock"></i></a
                    >
                </li>  
                <li class="nav-item">
                    <a class="nav-link"
                       href="${pageContext.request.contextPath}/ServletAsignacionAlumnoController?accion=listar"
                       >Asignaciones <i class="fas fa-sm fa-user-clock"></i></a
                    >
                </li>
                <li class="nav-item">
                    <a class="nav-link"
                       href="${pageContext.request.contextPath}/ServletCarreraTecnicaController?accion=listar"
                       >Carreras <i class="fas fa-sm fa-laptop"></i></a
                    >
                </li>
                <li class="nav-item">
                    <a class="nav-link"
                       href="${pageContext.request.contextPath}/ServletCursosController?accion=listar"
                       >Cursos <i class="fas fa-sm fa-book"></i></a
                    >
                </li>
                <li class="nav-item">
                    <a class="nav-link"
                       href="${pageContext.request.contextPath}/ServletAlumnoController?accion=listar"
                       >Alumnos <i class="fas fa-sm fa-user-graduate"></i></a
                    >
                </li>
            </ul>
        </div>
    </div>
</nav>