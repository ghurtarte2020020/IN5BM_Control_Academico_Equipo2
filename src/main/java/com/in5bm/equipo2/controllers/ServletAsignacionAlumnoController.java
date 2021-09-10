/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.in5bm.equipo2.controllers;

import com.in5bm.equipo2.models.dao.AsignacionAlumnoDaoImpl;
import com.in5bm.equipo2.models.domain.AsignacionAlumno;
import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;

/**
 *
 * @author Windows 10
 */

@WebServlet("/ServletAsignacionAlumnoController")
public class ServletAsignacionAlumnoController extends HttpServlet{
    private static final String JSP_LISTAR = "asignacion-alumno/asignacionAlumno.jsp";
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        String accion = request.getParameter("accion");
        
        if (accion != null) {
            switch(accion){
                case "listar":
                    listarAsignacionAlumno(request, response);
                    break;
                case "editar":
                    break;
                case "eliminar":
                    eliminarAsignacionAlumno(request, response);
                    break;
            }
        }

    }
    private void listarAsignacionAlumno(HttpServletRequest request, HttpServletResponse response) throws IOException{
        List<AsignacionAlumno> listaAsignacionAlumno = new AsignacionAlumnoDaoImpl().listar();
        
        HttpSession sesion = request.getSession();
        sesion.setAttribute("listadoAsignacionAlumno", listaAsignacionAlumno);
        response.sendRedirect(JSP_LISTAR);
    }
    
    private void eliminarAsignacionAlumno(HttpServletRequest request, HttpServletResponse response) throws IOException{
    String idAsignacion = request.getParameter("idAsignacion");
    AsignacionAlumno asignacionAlumno = new AsignacionAlumno(idAsignacion);
    int registrosEliminados = new AsignacionAlumnoDaoImpl().eliminar(asignacionAlumno);
        listarAsignacionAlumno(request, response);
    
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response){
    
    }
}
