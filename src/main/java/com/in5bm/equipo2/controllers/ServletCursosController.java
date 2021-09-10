/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.in5bm.equipo2.controllers;

import com.in5bm.equipo2.models.dao.CursoDaoImpl;
import com.in5bm.equipo2.models.domain.Cursos;
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
 * @author Marcelo Javier Diaz Pineda
 * @date 30/08/2021
 * @time 05:45:55 PM
 */

@WebServlet("/ServletCursosController")
public class ServletCursosController extends HttpServlet {
private static final String JSP_LISTAR = "cursos/cursos.jsp";
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String accion = request.getParameter("accion");

        if (accion != null) {
            switch (accion) {
                case "listar":
                    listarCursos(request, response);
                    break;
                case "editar":
                    //METODO
                    break;
                case "eliminar":
                    eliminarCursos(request, response);
                    break;
            }
        }
    }

    private void listarCursos(HttpServletRequest request, HttpServletResponse response) throws IOException {
        List<Cursos> listaCursos = new CursoDaoImpl().listar();
        System.out.println(listaCursos);
        HttpSession sesion = request.getSession();
        sesion.setAttribute("listadoCursos", listaCursos);
        response.sendRedirect(JSP_LISTAR);
    }

    private void eliminarCursos(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int idCursos = Integer.parseInt(request.getParameter("idCurso"));

        Cursos cursos = new Cursos(idCursos);

        int cursosEliminados = new CursoDaoImpl().eliminar(cursos);

        if (cursosEliminados == 0) {
            System.out.println("Este registro pertenece a uno de asignacion, porfavor elimine el otro registro");
        } else {
            System.out.println("Cantidad de registros eliminados: " + cursosEliminados);
        }

        listarCursos(request, response);
    }
}
