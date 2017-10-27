/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author FiJus
 */
public class Nomina {
    private int id;
    private String nombre;
    private float salario;
    private long prima;
    private long cesantias;
    private long intces;
    private long vacaciones;
    private long saludD;
    private long pensionD;
    private long saludE;
    private long pensionE;
    private long sena;
    private long icbf;
    private long ccf;
    private long salarioT;
    private long costoTotal;
    public Nomina() {
    }

    public Nomina(int id,String nombre,int dias,int meses, float salario) {
        this.id=id;
        this.nombre = nombre;
        this.salario=salario;
        float auxilio=0;
        if(salario<=1475434){
            auxilio=83140;
        }
        this.prima=(long) ((salario+auxilio)*dias/360);
        this.cesantias=(long) ((salario+auxilio)*dias/360);
        this.vacaciones=(long) ((salario+auxilio)*dias/720);
        this.intces=(long) ((long) ((salario+auxilio)*dias/360)*0.12);
        
        this.saludD=(long) ((salario*0.04)*meses);
        this.pensionD=(long) ((salario*0.04)*meses);
        
        this.saludE=(long) ((salario*0.085)*meses);
        this.pensionE=(long) ((salario*0.12)*meses);
        
        this.sena=(long) ((salario*0.02)*meses);
        this.icbf=(long) ((salario*0.03)*meses);
        this.ccf=(long) ((salario*0.04)*meses);
        
        this.salarioT=(long) (salario*(meses));
        this.costoTotal=this.salarioT+this.prima+this.cesantias+this.intces+this.vacaciones+this.pensionE+this.saludE+this.sena+this.icbf+this.ccf;
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

    public float getSalario() {
        return salario;
    }

    public void setSalario(float salario) {
        this.salario = salario;
    }

    public long getPrima() {
        return prima;
    }

    public void setPrima(long prima) {
        this.prima = prima;
    }

    public long getCesantias() {
        return cesantias;
    }

    public void setCesantias(long cesantias) {
        this.cesantias = cesantias;
    }

    public long getIntces() {
        return intces;
    }

    public void setIntces(long intces) {
        this.intces = intces;
    }

    public long getVacaciones() {
        return vacaciones;
    }

    public void setVacaciones(long vacaciones) {
        this.vacaciones = vacaciones;
    }

    public long getSaludD() {
        return saludD;
    }

    public void setSaludD(long saludD) {
        this.saludD = saludD;
    }

    public long getPensionD() {
        return pensionD;
    }

    public void setPensionD(long pensionD) {
        this.pensionD = pensionD;
    }

    public long getSaludE() {
        return saludE;
    }

    public void setSaludE(long saludE) {
        this.saludE = saludE;
    }

    public long getPensionE() {
        return pensionE;
    }

    public void setPensionE(long pensionE) {
        this.pensionE = pensionE;
    }

    public long getSena() {
        return sena;
    }

    public void setSena(long sena) {
        this.sena = sena;
    }

    public long getIcbf() {
        return icbf;
    }

    public void setIcbf(long icbf) {
        this.icbf = icbf;
    }

    public long getCcf() {
        return ccf;
    }

    public void setCcf(long ccf) {
        this.ccf = ccf;
    }

    public long getSalarioT() {
        return salarioT;
    }

    public void setSalarioT(long salarioT) {
        this.salarioT = salarioT;
    }

    public long getCostoTotal() {
        return costoTotal;
    }

    public void setCostoTotal(long costoTotal) {
        this.costoTotal = costoTotal;
    }

    

    @Override
    public String toString() {
        return "Nomina{" + "id=" + id + ", nombre=" + nombre + ", salario=" + salario + ", prima=" + prima + ", cesantias=" + cesantias + ", intces=" + intces + ", vacaciones=" + vacaciones + ", saludD=" + saludD + ", pensionD=" + pensionD + ", saludE=" + saludE + ", pensionE=" + pensionE + ", sena=" + sena + ", icbf=" + icbf + ", ccf=" + ccf + ", salarioT=" + salarioT + ", costoTotal=" + costoTotal + '}';
    }
    
    
    
    
}
