<%-- 
    Document   : horario
    Created on : Sep 1, 2021, 5:52:21 PM
    Author     : Cristian Morales
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<fmt:setLocale value="es_GT"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="../assets/css/style.css">
        <link rel="stylesheet" href="../assets/css/barra-navegacion.css">
        <link rel="stylesheet" href="../assets/css/bootstrap.css"> 
        <link rel="stylesheet" href="../assets/css/clockpicker.css"> 
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <script src="https://kit.fontawesome.com/bc893c1d65.js" crossorigin="anonymous"></script>
        
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
                    <th>Modificar</th>

                </tr>                                
            </thead>
            <tbody>
                <c:forEach var="horario" items="${listadoHorarios}">
                    <tr>

                        <td>${horario.idHorario}</td>
                        <td>${horario.horarioInicio}</td>
                        <td>${horario.horarioFinal}</td> 
                        
                        <td>
                            <a class="btn btn-outline-primary" href="${pageContext.request.contextPath}/ServletHorarioController?accion=eliminar&idHorario=${horario.idHorario}">Eliminar</a>
                           
                        </td>
                        
                        <td>
                            <a class="btn btn-outline-primary" href="${pageContext.request.contextPath}/ServletHorarioController?accion=editar&idHorario=${horario.idHorario}">Modificar</a>
                        </td>

                    </tr>         
                </c:forEach>  
                    
                  <!--Aqui va el codigo copiado -->
                       <!--Boton de navegacion para agregar-->
            <section id="accion" class="py-4 mb-4">
                <div class="container">
                    <div class="row">
                        <div class="col-12 col-md-3">
                            <a href="#" class="btn btn-primary btn-block" data-bs-toggle="modal" data-bs-target="#addModal">

                                <i class="fas fa-plus"></i>Agregar estudiante 

                            </a>                        
                        </div>                    
                    </div>
                </div>                    
            </section>
            
            
           
            <!--Esto es el formulario que llamamos al presionar el boton-->
           
              
            <!--Aqui es donde vamos a usar para poder agregar un estudiante 
            y poder hacer el formulario.-->
            <!-- Modal -->
            <div class="modal fade" id="addModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Agregar Horarios</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>

                        <form method="POST" action="${pageContext.request.contextPath}/ServletHorarioController" class="was-validated">

                            <div class="modal-body">

                                <form class="modal-body">


                                    <div class="input-group clockpicker" data-placement="right" data-align="top" data-autoclose="true" readonly="">
                                        <input type="text" class="form-control" value="Ingrese el horario aqui" name="horarioInicio" id="horarioInicio">
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-time"></span>
                                        </span>
                                    </div>
                                    
                                    
                                    <div class="input-group clockpicker" data-placement="right" data-align="top" data-autoclose="true" readonly="">
                                        <input type="text" class="form-control" value="Ingrese el horario aquí" name="horarioFinal" id="horarioFinal">
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-time"></span>
                                        </span>
                                    </div>
 
                                    <input type="hidden" name="accion" value="insertar">
                                    
     

                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                        <button type="submit" class="btn btn-success" >Guardar</button>
                                    </div>
                                </form>       
                            </div>
                    </div>
                </div>
            
            

            </tbody>   
        </table>
        <jsp:include page="/WEB-INF/paginas/comunes/pie-pagina.jsp"/>
        <!--Javascript-->
        <script src="../assets/js/jquery-3.6.0.js"></script>
        <script src="../assets/js/bootstrap.bundle.js"></script>
        <script src="../assets/js/clockpicker.js"></script>
        
        <script type="text/javascript">
            $('.clockpicker').clockpicker();
        </script>    
    </body>
</html>

