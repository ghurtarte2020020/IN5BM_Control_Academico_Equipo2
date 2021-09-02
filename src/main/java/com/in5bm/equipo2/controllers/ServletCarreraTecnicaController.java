

package com.in5bm.equipo2.controllers;

import com.in5bm.equipo2.models.dao.CarreraTecnicaDaoImpl;
import com.in5bm.equipo2.models.domain.CarreraTecnica;
import java.io.IOException;
import java.util.List;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @author Gabriel Enrique Hurtarte Garcia
 * Codigo técnico:IN5BM
 * @date 1/09/2021
 * @time 10:32:05 PM
 */

@WebServlet("/ServletCarreraTecnicaController")
public class ServletCarreraTecnicaController extends HttpServlet{
     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String accion = request.getParameter("accion");

        if (accion != null) {
            switch (accion) {
                case "listar":
                    listarCarrera(request, response);
                    break;
                case "editar":
                    //editarAlumno(request, response);
                    break;
                case "eliminar":
                    eliminarCarrera(request, response);
                    break;
            }
        }
    }

    private void listarCarrera(HttpServletRequest request, HttpServletResponse response) throws IOException {
        List<CarreraTecnica> listaCarrera = new CarreraTecnicaDaoImpl().listar();
        System.out.println(listaCarrera);
        HttpSession sesion = request.getSession();
        sesion.setAttribute("listadoCarrera", listaCarrera);
        response.sendRedirect("carrera-tecnica.jsp");
    }

    private void eliminarCarrera(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String codigo_carrera = request.getParameter("codigo_carrera");

        CarreraTecnica carreraTecnica = new CarreraTecnica(codigo_carrera);
        int carreraEliminada = new CarreraTecnicaDaoImpl().eliminar(carreraTecnica);
        System.out.println("CANTIDAD DE CARRERAS ELIMINADOS: " + carreraEliminada);
        listarCarrera(request, response);
    }
}
