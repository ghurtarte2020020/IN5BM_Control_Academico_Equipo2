<%-- 
    Document   : AsignacionAlumno
    Created on : 31/08/2021, 10:05:12 AM
    Author     : Windows 10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<fmt:setLocale value="es_GT" />
<!DOCTYPE html>
<html>
  <head>
    
    
    <link rel="stylesheet" href="../assets/css/bootstrap.css"> 
    <script src="../assets/js/bootstrap.bundle.js"></script>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.14.0-beta2/dist/css/bootstrap-select.min.css">
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.14.0-beta2/dist/js/bootstrap-select.min.js"></script>
    <!-- (Optional) Latest compiled and minified JavaScript translation files -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.14.0-beta2/dist/js/i18n/defaults-*.min.js"></script>

    <style>
      .modal-dialog:not(.modal-fullscreen) .modal-body {
          max-height: calc(100vh - 225px);
          overflow-y: auto;
      }
    </style>
  </head>

  <body>
    <div class="container mt-5 text-center">
      <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modal">Show modal</button>
    </div>

    <div id="modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-body">
            <div class="row">
              <div class="col-6">
                <label>Select without bug :</label>
                <select class="form-control" data-live-search="true" multiple="multiple"  data-actions-box="true">
                  <option>Option 1</option>
                  <option>Option 2</option>
                  <option>Option 3</option>
                </select>
              </div>
              <div class="col-6">
                <label>Select with bug :</label>
                <select class="form-control" data-container="body" data-live-search="true" data-live-search-style="begins" multiple="multiple" data-actions-box="true">
                  <option>Option 1</option>
                  <option>Option 2</option>
                  <option>Option 3</option>
                </select>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
      <div class="col-6" id="modal2">
                <label>Select without bug :</label>
                <select class="form-control" data-live-search="true" >
                  <option>Option 1</option>
                  <option>Option 2</option>
                  <option>Option 3</option>
                </select>
              </div>
    <script>
      $('div#modal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget);
        var modal = $(this);
        modal.find('select').selectpicker();
      });
    </script>
    <script>
      $('div#modal2').on('.start-0', function (event) {
        var button = $(event.relatedTarget);
        var modal = $(this);
        modal.find('select').selectpicker();
      });
    </script>
  </body>
</html>

