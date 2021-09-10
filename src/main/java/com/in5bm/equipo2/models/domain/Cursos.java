/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.in5bm.equipo2.models.domain;

import java.sql.Time;

/**
 *
* @author Marcelo Javier Diaz Pineda
* @date 30/08/2021
* @time 04:41:41 PM
 */
public class Cursos {
    private int idCurso; 
    private int ciclo; 
    private int cupoMaximo; 
    private int cupoMinimo; 
    private String descripcion; 
    private String carrera;
    private Time horarioInicio;
    private Time horarioFinal;
    private String instructor;
    private String nombreSalon;

    public Cursos() {
    }

    public Cursos(int idCurso) {
        this.idCurso = idCurso;
    }

    public Cursos(int ciclo, int cupoMaximo, int cupoMinimo, String descripcion, String carrera, Time horarioInicio, Time horarioFinal, String instructor, String nombreSalon) {
        this.ciclo = ciclo;
        this.cupoMaximo = cupoMaximo;
        this.cupoMinimo = cupoMinimo;
        this.descripcion = descripcion;
        this.carrera = carrera;
        this.horarioInicio = horarioInicio;
        this.horarioFinal = horarioFinal;
        this.instructor = instructor;
        this.nombreSalon = nombreSalon;
    }

    public Cursos(int idCurso, int ciclo, int cupoMaximo, int cupoMinimo, String descripcion, String carrera, Time horarioInicio, Time horarioFinal, String instructor, String nombreSalon) {
        this.idCurso = idCurso;
        this.ciclo = ciclo;
        this.cupoMaximo = cupoMaximo;
        this.cupoMinimo = cupoMinimo;
        this.descripcion = descripcion;
        this.carrera = carrera;
        this.horarioInicio = horarioInicio;
        this.horarioFinal = horarioFinal;
        this.instructor = instructor;
        this.nombreSalon = nombreSalon;
    }

    public int getIdCurso() {
        return idCurso;
    }

    public void setIdCurso(int idCurso) {
        this.idCurso = idCurso;
    }

    public int getCiclo() {
        return ciclo;
    }

    public void setCiclo(int ciclo) {
        this.ciclo = ciclo;
    }

    public int getCupoMaximo() {
        return cupoMaximo;
    }

    public void setCupoMaximo(int cupoMaximo) {
        this.cupoMaximo = cupoMaximo;
    }

    public int getCupoMinimo() {
        return cupoMinimo;
    }

    public void setCupoMinimo(int cupoMinimo) {
        this.cupoMinimo = cupoMinimo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getCarrera() {
        return carrera;
    }

    public void setCarrera(String carrera) {
        this.carrera = carrera;
    }

    public Time getHorarioInicio() {
        return horarioInicio;
    }

    public void setHorarioInicio(Time horarioInicio) {
        this.horarioInicio = horarioInicio;
    }

    public Time getHorarioFinal() {
        return horarioFinal;
    }

    public void setHorarioFinal(Time horarioFinal) {
        this.horarioFinal = horarioFinal;
    }

    public String getInstructor() {
        return instructor;
    }

    public void setInstructor(String instructor) {
        this.instructor = instructor;
    }

    public String getNombreSalon() {
        return nombreSalon;
    }

    public void setNombreSalon(String nombreSalon) {
        this.nombreSalon = nombreSalon;
    }

    @Override
    public String toString() {
        return "Cursos{" + "idCurso=" + idCurso + ", ciclo=" + ciclo + ", cupoMaximo=" + cupoMaximo + ", cupoMinimo=" + cupoMinimo + ", descripcion=" + descripcion + ", carrera=" + carrera + ", horarioInicio=" + horarioInicio + ", horarioFinal=" + horarioFinal + ", instructor=" + instructor + ", nombreSalon=" + nombreSalon + '}';
    }

    

    
}
