
package com.in5bm.equipo2.controllers;

import com.in5bm.equipo2.models.dao.InstructorDaoImpl;
import com.in5bm.equipo2.models.domain.Instructor;
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
 * @author Axel Javier Guadalupe Alvarez Felipe
 */

@WebServlet("/ServletInstructorController")
public class ServletInstructorController extends HttpServlet{
    private static final String JSP_LISTAR = "instructor/instructor.jsp";    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        
        String accion = request.getParameter("accion");
        
        if (accion != null) {
            switch (accion) {
                case "listar":
                    listarInstructores(request, response);
                break;
                
                case "editar":
                    break;
                    
                case "eliminar":
                    eliminarInstructores(request, response);
                    break;
                    
                    
            }
        }
     
        
    }
    
    private void eliminarInstructores(HttpServletRequest request, HttpServletResponse response) throws IOException{
        int idInstructor = Integer.parseInt(request.getParameter("idInstructor"));
        Instructor instructor = new Instructor(idInstructor);
        int registrosEliminados = new InstructorDaoImpl().eliminar(instructor);
        System.out.println("Registros eliminados: " + registrosEliminados);
        listarInstructores(request, response);
    }
    
    private void listarInstructores(HttpServletRequest request, HttpServletResponse response) throws IOException{
        List<Instructor> listaInstructor = new InstructorDaoImpl().listar();
        HttpSession sesion = request.getSession();
        sesion.setAttribute("listadoInstructor", listaInstructor);
        response.sendRedirect(JSP_LISTAR);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response){
        
    }
    
    
    
    
    
   

}


