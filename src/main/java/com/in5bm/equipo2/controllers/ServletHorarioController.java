/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.in5bm.equipo2.controllers;


import com.in5bm.equipo2.models.dao.HorarioDaoImpl;
import com.in5bm.equipo2.models.domain.Horario;
import java.io.IOException;
import java.util.List;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * @author Cristian Noe Cumez Morales
 * Codigo técnico:IN5BM
 * @date 9/1/2021
 * @time 07:55:02
 */

@WebServlet("/ServletHorarioController")
public class ServletHorarioController extends HttpServlet {
    private static final String JSP_LISTAR = "horario/horario.jsp";
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        
        String accion = request.getParameter("accion");
            if(accion != null){
                switch(accion){
                    case "listar":
                        listarHorarios(request,response);
                        break;
                    case "editar":
                        //modificar
                        break;
                    case "eliminar":
                        eliminarHorarios(request,response);
                }           
            }
        
    }

    private void listarHorarios(HttpServletRequest request, HttpServletResponse response) throws IOException {
        List<Horario> listaHorarios = new HorarioDaoImpl().listar();
        HttpSession sesion = request.getSession();
        sesion.setAttribute("listadoHorarios", listaHorarios);
        response.sendRedirect(JSP_LISTAR);
        
        
    }
    
    private void eliminarHorarios(HttpServletRequest request, HttpServletResponse response) throws IOException{
        int idHorario = Integer.parseInt(request.getParameter("idHorario"));
        Horario horario = new Horario(idHorario);
        int registrosHorarios = new HorarioDaoImpl().eliminar(horario);
        listarHorarios(request,response);
        
    
    }
    
}
