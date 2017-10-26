/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author LabingXEON
 */
public class Empleado {
    private int id;

    @Override
    public String toString() {
        return "Empleado{" + "id=" + id + ", nombre=" + nombre + ", lugarN=" + lugarN + ", idE=" + idE + ", FechaI=" + FechaI + ", idTC=" + idTC + ", idD=" + idD + ", idP=" + idP + ", idT=" + idT + ", idS=" + idS + ", idR=" + idR + ", Salario=" + Salario + '}';
    }
    private String nombre;
    private String lugarN;
    private int idE;
    private String FechaI;
    private TipoContrato idTC;
    private Departamento idD;
    private Puesto idP;
    private Turno idT;
    private Sueldo idS;
    private Regimen idR;
    private float Salario;

    public Empleado() {
    }

    public Empleado(int id, String nombre, String lugarN, int idE, String FechaI, TipoContrato idTC, Departamento idD, Puesto idP, Turno idT, Sueldo idS, Regimen idR, float Salario) {
        this.id = id;
        this.nombre = nombre;
        this.lugarN = lugarN;
        this.idE = idE;
        this.FechaI = FechaI;
        this.idTC = idTC;
        this.idD = idD;
        this.idP = idP;
        this.idT = idT;
        this.idS = idS;
        this.idR = idR;
        this.Salario = Salario;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getLugarN() {
        return lugarN;
    }

    public void setLugarN(String lugarN) {
        this.lugarN = lugarN;
    }

    public int getIdE() {
        return idE;
    }

    public void setIdE(int idE) {
        this.idE = idE;
    }

    public String getFechaI() {
        return FechaI;
    }

    public void setFechaI(String FechaI) {
        this.FechaI = FechaI;
    }

    public TipoContrato getIdTC() {
        return idTC;
    }

    public void setIdTC(TipoContrato idTC) {
        this.idTC = idTC;
    }

    public Departamento getIdD() {
        return idD;
    }

    public void setIdD(Departamento idD) {
        this.idD = idD;
    }

    public Puesto getIdP() {
        return idP;
    }

    public void setIdP(Puesto idP) {
        this.idP = idP;
    }

    public Turno getIdT() {
        return idT;
    }

    public void setIdT(Turno idT) {
        this.idT = idT;
    }

    public Sueldo getIdS() {
        return idS;
    }

    public void setIdS(Sueldo idS) {
        this.idS = idS;
    }

    public Regimen getIdR() {
        return idR;
    }

    public void setIdR(Regimen idR) {
        this.idR = idR;
    }

    public float getSalario() {
        return Salario;
    }

    public void setSalario(float Salario) {
        this.Salario = Salario;
    }
    
    
}
