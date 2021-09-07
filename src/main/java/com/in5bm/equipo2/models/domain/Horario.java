/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.in5bm.equipo2.models.domain;

import java.sql.Time;

/**
 * @author Cristian Noe Cumez Morales
 * Codigo técnico:IN5BM
 * @date 9/1/2021
 * @time 07:55:02
 */

public class Horario {
    
    private int idHorario;
    private Time horarioInicio;
    private Time horarioSalida;

    public Horario() {
   
    }

    public Horario(int idHorario) {
        this.idHorario = idHorario;
    }

    public Horario(Time horarioInicio, Time horarioSalida) {
        this.horarioInicio = horarioInicio;
        this.horarioSalida = horarioSalida;
    }

    public Horario(int idHorario, Time horarioInicio, Time horarioSalida) {
        this.idHorario = idHorario;
        this.horarioInicio = horarioInicio;
        this.horarioSalida = horarioSalida;
    }

    public int getIdHorario() {
        return idHorario;
    }

    public void setIdHorario(int idHorario) {
        this.idHorario = idHorario;
    }

    public Time getHorarioInicio() {
        return horarioInicio;
    }

    public void setHorarioInicio(Time horarioInicio) {
        this.horarioInicio = horarioInicio;
    }

    public Time getHorarioSalida() {
        return horarioSalida;
    }

    public void setHorarioSalida(Time horarioSalida) {
        this.horarioSalida = horarioSalida;
    }

    @Override
    public String toString() {
        return "Horario{" + "idHorario=" + idHorario + ", horarioInicio=" + horarioInicio + ", horarioSalida=" + horarioSalida + '}';
    }
    
        
}
