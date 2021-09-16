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
        <link rel="stylesheet" href="../assets/css/bootstrap.css"> 
        <link rel="icon" type="image/png" href="../assets/images/favicon.png">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
              rel="stylesheet">
        <script src="https://kit.fontawesome.com/bc893c1d65.js" crossorigin="anonymous"></script>
        <title>Listado Instructores</title>
    </head>
<<<<<<< HEAD
<<<<<<< HEAD
    <body>
=======

    <body>

        <!-- cabecera -->
>>>>>>> 49fc7903cd1a595fd0ef53a8c41da6b39a3ae623
=======
    <body>
>>>>>>> 0143fa3e7cb431a0e346f2685835c18c642cc8c4
        <jsp:include page="/WEB-INF/paginas/comunes/cabecera.jsp"/>

        <div class="shadow p-3 m-4 fs-3 bg-primary bg-gradient rounded text-center text-white col-11 mx-auto">
            <i class="fas fa-list"></i> Listado instructores <i class="fas fa-sm fa-chalkboard-teacher"></i>
        </div>
<<<<<<< HEAD
<<<<<<< HEAD
=======

        <section id="accions" class="py-4 mb-4">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-md-3">
                        <a href="#" class="btn btn-primary btn-block" data-bs-toggle="modal" data-bs-target="#addModal">
                            <i class="fas fa-plus"></i>Agregar instructor
                        </a>
                    </div>   
                </div>    
            </div>
        </section>

        <!-- Modal -->
        <div class="modal fade" id="addModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header bg-primary text-white">
                        <h5 class="modal-title" id="exampleModalLabel">Agregar instructor</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    
                    <form method="POST" action="${pageContext.request.contextPath}/ServletInstructorController" class="was-validated">

                        <div class="modal-body">

                            <div class="mb-3">
                                <label for="apellidos" class="form-label">Apellidos </label>
                                <input type="text" class="form-control" name="apellidos" id="apellidos" required>                                   
                            </div>

                            <div class="mb-3">
                                <label for="nombres" class="form-label">Nombres </label>
                                <input type="text" class="form-control" name="nombres" id="nombres" required>                                   
                            </div>

                            <div class="mb-3">
                                <label for="direccion" class="form-label">Dirección </label>
                                <input type="text" class="form-control" name="direccion" id="direccion" required>                                   
                            </div>

                            <div class="mb-3">
                                <label for="telefono" class="form-label">Teléfono </label>
                                <input type="tel" class="form-control" name="telefono" id="telefono" required>                                   
                            </div>   
                            
                            <input type="hidden" name="accion" value="insertar">
                            
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                            <button type="submit" class="btn btn-primary">Guardar cambios</button>                            
                        </div>
                    </form>
                </div>
            </div>
        </div>  

>>>>>>> 49fc7903cd1a595fd0ef53a8c41da6b39a3ae623
=======
>>>>>>> 0143fa3e7cb431a0e346f2685835c18c642cc8c4
        <div class="table-responsive mb-5 col-11 mx-auto">
            <table class="table table-secondary table-hover align-middle">
                <thead class="table-dark">
                    <tr>
                        <th>#</th>
                        <th>Apellidos</th>
                        <th>Nombres</th>
                        <th>Direccion</th>
                        <th>Telefono</th>
                        <th> </th>
<<<<<<< HEAD
<<<<<<< HEAD
=======
                        <th> </th>
>>>>>>> 49fc7903cd1a595fd0ef53a8c41da6b39a3ae623
=======
>>>>>>> 0143fa3e7cb431a0e346f2685835c18c642cc8c4
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
<<<<<<< HEAD
<<<<<<< HEAD
=======
                                <a class="btn btn-outline-primary" href="${pageContext.request.contextPath}/ServletInstructorController?accion=editar&idInstructor=${instructor.idInstructor}">
                                    <i class="far fa-edit"></i> Editar
                                </a>
                            </td>
                            <td>
>>>>>>> 49fc7903cd1a595fd0ef53a8c41da6b39a3ae623
=======
>>>>>>> 0143fa3e7cb431a0e346f2685835c18c642cc8c4
                                <a class="btn btn-outline-primary" href="${pageContext.request.contextPath}/ServletInstructorController?accion=eliminar&idInstructor=${instructor.idInstructor}">
                                    <i class="fas fa-trash"></i> Eliminar
                                </a>
                            </td>

                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
<<<<<<< HEAD
<<<<<<< HEAD
        <jsp:include page="/WEB-INF/paginas/comunes/pie-pagina.jsp"/>
        <!--Javascript-->
        <script src="../assets/js/jquery-3.6.0.js"></script>
        <script src="../assets/js/bootstrap.bundle.js"></script>
    </body>
=======
                    
        <!-- footer -->
        <jsp:include page="/WEB-INF/paginas/comunes/pie-pagina.jsp"/>
        
        <!--Javascript-->
        <script src="../assets/js/jquery-3.6.0.js"></script>
        <script src="../assets/js/bootstrap.bundle.js"></script>
        
    </body>
    
>>>>>>> 49fc7903cd1a595fd0ef53a8c41da6b39a3ae623
=======
        <jsp:include page="/WEB-INF/paginas/comunes/pie-pagina.jsp"/>
        <!--Javascript-->
        <script src="../assets/js/jquery-3.6.0.js"></script>
        <script src="../assets/js/bootstrap.bundle.js"></script>
    </body>
>>>>>>> 0143fa3e7cb431a0e346f2685835c18c642cc8c4
</html>
