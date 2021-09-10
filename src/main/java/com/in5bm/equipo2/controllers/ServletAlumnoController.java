/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.in5bm.equipo2.controllers;

import com.in5bm.equipo2.models.dao.AlumnoDaoImpl;
import com.in5bm.equipo2.models.domain.Alumno;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;

/**
 *
 * @author Ricardo Paz <rpaz-2017457@kinal.edu.gt>
 * @date 30-ago-2021
 * @time 22:25:45
 */

@WebServlet("/ServletAlumnoController")
public class ServletAlumnoController extends HttpServlet {
    private static final String JSP_LISTAR = "alumno/alumno.jsp";
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String accion = request.getParameter("accion");

        if (accion != null) {
            switch (accion) {
                case "listar":
                    listarAlumno(request, response);
                    break;
                case "editar":
                    //editarAlumno(request, response);
                    break;
                case "eliminar":
                    eliminarAlumno(request, response);
                    break;
            }
        }
    }

    private void listarAlumno(HttpServletRequest request, HttpServletResponse response) throws IOException {
        List<Alumno> listaAlumno = new AlumnoDaoImpl().listar();
        System.out.println(listaAlumno);
        HttpSession sesion = request.getSession();
        sesion.setAttribute("listadoAlumno", listaAlumno);
        response.sendRedirect(JSP_LISTAR);
    }

    private void eliminarAlumno(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String carne = request.getParameter("carne");

        Alumno alumno = new Alumno(carne);
        int alumnoEliminado = new AlumnoDaoImpl().eliminar(alumno);
        System.out.println("CANTIDAD DE ALUMNOS ELIMINADOS: " + alumnoEliminado);
        listarAlumno(request, response);
    }
}
