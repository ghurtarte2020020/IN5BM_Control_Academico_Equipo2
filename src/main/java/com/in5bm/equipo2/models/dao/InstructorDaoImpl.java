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
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 0143fa3e7cb431a0e346f2685835c18c642cc8c4
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
    
<<<<<<< HEAD
=======
 *
 * @author Axel Javier Guadalupe Alvarez Felipe
 */
public class InstructorDaoImpl implements IInstructorDao {

    private static final String SQL_SELECT = "SELECT instructor_id, apellidos, nombres, direccion, telefono FROM instructor";
    private static final String SQL_DELETE = "DELETE FROM instructor WHERE instructor_id = ?";
    private static final String SQL_INSERT = "INSERT INTO instructor (apellidos, nombres, direccion, telefono) VALUES (?, ?, ?, ?)";
    private static final String SQL_SELECT_ID = "SELECT instructor_id, apellidos, nombres, direccion, telefono FROM instructor WHERE instructor_id = ?";
    private static final String SQL_UPDATE = "UPDATE instructor SET apellidos = ?, nombres = ?, direccion = ?, telefono = ? WHERE instructor_id = ?";

    private Connection conn = null;
    private PreparedStatement pstmt = null;
    private ResultSet rs = null;

    private Instructor instructor = null;

    private List<Instructor> listaInstructores = new ArrayList<>();
>>>>>>> 49fc7903cd1a595fd0ef53a8c41da6b39a3ae623
=======
>>>>>>> 0143fa3e7cb431a0e346f2685835c18c642cc8c4

    @Override
    public List<Instructor> listar() {
        try {
            conn = Conexion.getConnection();
            pstmt = conn.prepareStatement(SQL_SELECT);
            rs = pstmt.executeQuery();
<<<<<<< HEAD
<<<<<<< HEAD
            
=======

>>>>>>> 49fc7903cd1a595fd0ef53a8c41da6b39a3ae623
=======
            
>>>>>>> 0143fa3e7cb431a0e346f2685835c18c642cc8c4
            while (rs.next()) {
                int idInstructor = rs.getInt("instructor_id");
                String apellidos = rs.getString("apellidos");
                String nombres = rs.getString("nombres");
                String direccion = rs.getString("direccion");
                String telefono = rs.getString("telefono");
<<<<<<< HEAD
<<<<<<< HEAD
                
=======

>>>>>>> 49fc7903cd1a595fd0ef53a8c41da6b39a3ae623
=======
                
>>>>>>> 0143fa3e7cb431a0e346f2685835c18c642cc8c4
                instructor = new Instructor(idInstructor, apellidos, nombres, direccion, telefono);
                listaInstructores.add(instructor);
            }
        } catch (SQLException e) {
            e.printStackTrace(System.out);
<<<<<<< HEAD
<<<<<<< HEAD
        } catch (Exception e){
=======
        } catch (Exception e) {
>>>>>>> 49fc7903cd1a595fd0ef53a8c41da6b39a3ae623
=======
        } catch (Exception e){
>>>>>>> 0143fa3e7cb431a0e346f2685835c18c642cc8c4
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
<<<<<<< HEAD
<<<<<<< HEAD
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
=======
        
        try {
            conn = Conexion.getConnection();
            pstmt = conn.prepareStatement(SQL_SELECT_ID);
            pstmt.setInt(1, instructor.getIdInstructor());
            rs = pstmt.executeQuery();

            while (rs.next()) {
                String apellidos = rs.getString("apellidos");
                String nombres = rs.getString("nombres");
                String direccion = rs.getString("direccion");
                String telefono = rs.getString("telefono");

                instructor.setApellidos(apellidos);
                instructor.setNombres(nombres);
                instructor.setDireccion(direccion);
                instructor.setTelefono(telefono);
            }
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        } catch (Exception e) {
            e.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(pstmt);
            Conexion.close(conn);
        }
        
        return instructor;
>>>>>>> 49fc7903cd1a595fd0ef53a8c41da6b39a3ae623
=======
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
>>>>>>> 0143fa3e7cb431a0e346f2685835c18c642cc8c4
    }

    @Override
    public int insertar(Instructor instructor) {
<<<<<<< HEAD
<<<<<<< HEAD
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
=======

        int rows = 0;

        try {
            conn = Conexion.getConnection();
            pstmt = conn.prepareStatement(SQL_INSERT);
            pstmt.setString(1, instructor.getApellidos());
            pstmt.setString(2, instructor.getNombres());
            pstmt.setString(3, instructor.getDireccion());
            pstmt.setString(4, instructor.getTelefono());

            System.out.println(pstmt.toString());

            rows = pstmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace(System.out);
        } catch (Exception e) {
            e.printStackTrace(System.out);
        } finally {
            Conexion.close(pstmt);
            Conexion.close(conn);
        }

        return rows;
>>>>>>> 49fc7903cd1a595fd0ef53a8c41da6b39a3ae623
=======
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
>>>>>>> 0143fa3e7cb431a0e346f2685835c18c642cc8c4
    }

    @Override
    public int actualizar(Instructor instructor) {
<<<<<<< HEAD
<<<<<<< HEAD
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
=======
        
        int rows = 0;

        try {
            conn = Conexion.getConnection();
            pstmt = conn.prepareStatement(SQL_UPDATE);
            pstmt.setString(1, instructor.getApellidos());
            pstmt.setString(2, instructor.getNombres());
            pstmt.setString(3, instructor.getDireccion());
            pstmt.setString(4, instructor.getTelefono());
            pstmt.setDouble(5, instructor.getIdInstructor());

            System.out.println(pstmt.toString());

            rows = pstmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace(System.out);
        } catch (Exception e) {
            e.printStackTrace(System.out);
        } finally {
            Conexion.close(pstmt);
            Conexion.close(conn);
        }

        return rows;
>>>>>>> 49fc7903cd1a595fd0ef53a8c41da6b39a3ae623
=======
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
>>>>>>> 0143fa3e7cb431a0e346f2685835c18c642cc8c4
    }

    @Override
    public int eliminar(Instructor instructor) {
        int rows = 0;
        try {
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 0143fa3e7cb431a0e346f2685835c18c642cc8c4
           conn = Conexion.getConnection();
           pstmt = conn.prepareStatement(SQL_DELETE);
           pstmt.setInt(1, instructor.getIdInstructor());
           System.out.println(pstmt.toString());
           rows = pstmt.executeUpdate();
<<<<<<< HEAD
=======
            conn = Conexion.getConnection();
            pstmt = conn.prepareStatement(SQL_DELETE);
            pstmt.setInt(1, instructor.getIdInstructor());
            System.out.println(pstmt.toString());
            rows = pstmt.executeUpdate();
>>>>>>> 49fc7903cd1a595fd0ef53a8c41da6b39a3ae623
=======
>>>>>>> 0143fa3e7cb431a0e346f2685835c18c642cc8c4
        } catch (Exception e) {
            e.printStackTrace(System.out);
        } finally {
            Conexion.close(pstmt);
            Conexion.close(conn);
        }
        return rows;
    }

}
