package com.in5bm.equipo2.controllers;

import com.in5bm.equipo2.models.domain.Salon;
import com.in5bm.equipo2.models.dao.SalonDaoImpl;
import java.io.IOException;
import java.util.List;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author @date 2/09/2021
 * @time 06:45:22 PM
 */
@WebServlet("/ServletSalonController")
public class ServletSalonController extends HttpServlet {

    private static final String JSP_LISTAR = "salon/salon.jsp";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String accion = request.getParameter("accion");
        if (accion != null) {
            switch (accion) {
                case "listar":
                    listarSalon(request, response);
                    break;
                case "editar'":
                    break;
                case "eliminar":
                    eliminarSalon(request, response);
                    break;
            }
        }

    }

    private void listarSalon(HttpServletRequest request, HttpServletResponse response) throws IOException {
        List<Salon> listaSalon = new SalonDaoImpl().listar();
        HttpSession sesion = request.getSession();
        sesion.setAttribute("listadoSalon", listaSalon);
        response.sendRedirect(JSP_LISTAR);
    }

    private void eliminarSalon(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int salonId = Integer.parseInt(request.getParameter("salonId"));
        Salon salones = new Salon(salonId);
        int registrosEliminados = new SalonDaoImpl().eliminar(salones);
        System.out.println("Cantidad de registros eliminados:" + registrosEliminados);
        listarSalon(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {

    }
}
