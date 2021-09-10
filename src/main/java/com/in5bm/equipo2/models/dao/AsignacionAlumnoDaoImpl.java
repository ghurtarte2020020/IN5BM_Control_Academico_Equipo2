/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.in5bm.equipo2.models.dao;

import com.in5bm.equipo2.db.Conexion;
import com.in5bm.equipo2.models.domain.AsignacionAlumno;
import com.in5bm.equipo2.models.idao.IAsignacionAlumnoDao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.Timestamp;

/**
 *
 * @author Windows 10
 */
public class AsignacionAlumnoDaoImpl implements IAsignacionAlumnoDao {

    private static final String SQL_SELECT = "SELECT asignacion_alumno.asignacion_id, "
            + "asignacion_alumno.carne, asignacion_alumno.curso_id, asignacion_alumno.fecha_asignacion, "
            + "alumno.nombres, alumno.apellidos, curso.descripcion FROM asignacion_alumno "
            + "INNER JOIN alumno on asignacion_alumno.carne = alumno.carne "
            + "INNER JOIN curso on asignacion_alumno.curso_id = curso.curso_id;";
    private static final String SQL_DELETE = "DELETE FROM asignacion_alumno WHERE asignacion_id = ?";

    private Connection conn = null;
    private PreparedStatement pstmt = null;
    private ResultSet rs = null;
    private AsignacionAlumno asignacionAlumno = null;
    private List<AsignacionAlumno> listaAsignacionAlumno = new ArrayList<>();

    @Override
    public List<AsignacionAlumno> listar() {
        try {
            conn = Conexion.getConnection();
            pstmt = conn.prepareStatement(SQL_SELECT);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                String idAsignacion = rs.getString("asignacion_alumno.asignacion_id");
                String carne = rs.getString("asignacion_alumno.carne");
                int idCurso = rs.getInt("asignacion_alumno.curso_id");
                Timestamp fecha_asignacion = rs.getTimestamp("asignacion_alumno.fecha_asignacion");
                String nombres = rs.getString("alumno.nombres");
                String apellidos = rs.getString("alumno.apellidos");
                String descripcion = rs.getString("curso.descripcion");
                
                asignacionAlumno = new AsignacionAlumno(idAsignacion, carne, idCurso, fecha_asignacion, nombres, apellidos, descripcion);
                listaAsignacionAlumno.add(asignacionAlumno);
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
        return listaAsignacionAlumno;
    }

    @Override
    public AsignacionAlumno encontrar(AsignacionAlumno asignacionAlumno) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int insertar(AsignacionAlumno asignacionAlumno) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int actualizar(AsignacionAlumno asignacionAlumno) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int eliminar(AsignacionAlumno asignacionAlumno) {
        int rows = 0;
        try {
            conn = Conexion.getConnection();
            pstmt = conn.prepareStatement(SQL_DELETE);
            pstmt.setString(1, asignacionAlumno.getIdAsignacion());
            rows = pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        } finally {
            Conexion.close(pstmt);
            Conexion.close(conn);
        }
        return rows;
    }

}
