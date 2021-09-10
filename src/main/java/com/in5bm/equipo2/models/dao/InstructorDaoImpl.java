package com.in5bm.equipo2.models.dao;

import com.in5bm.equipo2.db.Conexion;
import com.in5bm.equipo2.models.domain.Instructor;
import com.in5bm.equipo2.models.idao.IInstructorDao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * 
 * @author Axel Javier Guadalupe Alvarez Felipe
 */
public class InstructorDaoImpl implements IInstructorDao{
    
    private static final String SQL_SELECT = "SELECT instructor_id, apellidos, nombres, direccion, telefono FROM instructor";
    private static final String SQL_DELETE = "DELETE FROM instructor WHERE instructor_id = ?";
    
    private Connection conn = null;
    private PreparedStatement pstmt = null;
    private ResultSet rs = null;
    
    private Instructor instructor = null;
    
    private List<Instructor> listaInstructores = new ArrayList<>();
    

    @Override
    public List<Instructor> listar() {
        try {
            conn = Conexion.getConnection();
            pstmt = conn.prepareStatement(SQL_SELECT);
            rs = pstmt.executeQuery();
            
            while (rs.next()) {
                int idInstructor = rs.getInt("instructor_id");
                String apellidos = rs.getString("apellidos");
                String nombres = rs.getString("nombres");
                String direccion = rs.getString("direccion");
                String telefono = rs.getString("telefono");
                
                instructor = new Instructor(idInstructor, apellidos, nombres, direccion, telefono);
                listaInstructores.add(instructor);
            }
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        } catch (Exception e){
            e.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(pstmt);
            Conexion.close(conn);
        }
        return listaInstructores;
    }

    @Override
    public Instructor encontrar(Instructor instructor) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int insertar(Instructor instructor) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int actualizar(Instructor instructor) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int eliminar(Instructor instructor) {
        int rows = 0;
        try {
           conn = Conexion.getConnection();
           pstmt = conn.prepareStatement(SQL_DELETE);
           pstmt.setInt(1, instructor.getIdInstructor());
           System.out.println(pstmt.toString());
           rows = pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace(System.out);
        } finally {
            Conexion.close(pstmt);
            Conexion.close(conn);
        }
        return rows;
    }

}
