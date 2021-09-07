package com.in5bm.equipo2.models.idao;
import com.in5bm.equipo2.models.domain.Salon;
import java.util.List;

/**
 * 
 * @author 
 * @date 2/09/2021
 * @time 06:48:17 PM
 */
public interface ISalonDao {
    public List<Salon> listar();
    public Salon encontrar(Salon salon);
    public int insertar(Salon salon);
    public int actualizar (Salon salon);
    public int eliminar (Salon salon);
}
