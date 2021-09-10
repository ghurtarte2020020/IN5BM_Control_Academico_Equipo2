package com.in5bm.equipo2.models.dao;

import com.in5bm.equipo2.db.Conexion;
import com.in5bm.equipo2.models.domain.CarreraTecnica;
import com.in5bm.equipo2.models.idao.ICarreraTecnicaDao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Gabriel Enrique Hurtarte Garcia Codigo técnico:IN5BM
 * @date 1/09/2021
 * @time 10:24:56 PM
 */
public class CarreraTecnicaDaoImpl implements ICarreraTecnicaDao{

    private static final String SQL_SELECT = "SELECT codigo_carrera, nombre FROM carrera_tecnica";
    private static final String SQL_DELETE = "DELETE FROM carrera_tecnica WHERE codigo_carrera = ?";
    private Connection conn = null;
    private PreparedStatement pstmt = null;
    private ResultSet rs = null;
    private CarreraTecnica carreraTecnica = null;
    List<CarreraTecnica> listaCarrera = new ArrayList<>();
    
    
    @Override
    public List<CarreraTecnica> listar() {
        try{
            conn = Conexion.getConnection();
            pstmt = conn.prepareStatement(SQL_SELECT);
            rs = pstmt.executeQuery();
            
            while(rs.next()){
                String codigo_carrera = rs.getString("codigo_carrera");
                String nombre = rs.getString("nombre");
                
                carreraTecnica = new CarreraTecnica(codigo_carrera,nombre);
                listaCarrera.add(carreraTecnica);
            }
        }catch(SQLException e){
            System.out.println("Un registro de Curso depende de este, elimine primero el registro en curso");
        }finally{
            Conexion.close(rs);
            Conexion.close(pstmt);
            Conexion.close(conn);
        }
        
        return listaCarrera;
    }

    @Override
    public CarreraTecnica encontrar(CarreraTecnica carreraTecnica) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int insertar(CarreraTecnica carreraTecnica) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int actualizar(CarreraTecnica carreraTecnica) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int eliminar(CarreraTecnica carreraTecnica) {
                int rows = 0;
        
        try{
            conn = Conexion.getConnection();
            pstmt = conn.prepareStatement(SQL_DELETE);
            pstmt.setString(1, carreraTecnica.getCodigo_carrera());
            System.out.println(pstmt.toString());
            rows = pstmt.executeUpdate();
            
        }catch(SQLException e){
            e.printStackTrace();
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            Conexion.close(pstmt);
            Conexion.close(conn);
        }
        
        return rows;
    }

}
