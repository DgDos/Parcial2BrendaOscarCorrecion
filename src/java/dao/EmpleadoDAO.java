/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import model.Departamento;
import model.Empleado;
import model.Estatus;
import model.Puesto;
import model.Regimen;
import model.Sueldo;
import model.TipoContrato;
import model.Turno;
import util.DbUtil;

/**
 *
 * @author LabingXEON
 */
public class EmpleadoDAO {
    private Connection connection;

    public EmpleadoDAO() {
        connection = DbUtil.getConnection();
    }



    public void updateEmpleado(int idE,float Salario) throws SQLException {
        PreparedStatement preparedStatement = connection.prepareStatement("update empleado set Salario=?" + " where id=?");
        preparedStatement.setFloat(1, Salario);
        preparedStatement.setInt(2, idE);
        preparedStatement.executeUpdate();
    }

    public ArrayList<Empleado> getAllEmpleados() throws SQLException {
        ArrayList<Empleado> empleados = new ArrayList<>();
        Statement statement = connection.createStatement();
        ResultSet rs = statement.executeQuery("SELECT empleado.id,empleado.nombre,Salario FROM (empleado,estatus) WHERE estatus.id=empleado.idE and estatus.nombre='Activo'");
        while (rs.next()) {
            Empleado e = new Empleado();
            e.setId(rs.getInt("id"));
            e.setNombre(rs.getString("nombre"));
            e.setSalario(rs.getFloat("Salario"));
            empleados.add(e);
        }
        return empleados;
    }
    
    public ArrayList<Empleado> getAllSalarios() throws SQLException {
        ArrayList<Empleado> empleados = new ArrayList<>();
        Statement statement = connection.createStatement();
        ResultSet rs = statement.executeQuery("SELECT empleado.id,empleado.nombre,estatus.nombre as es,Salario FROM (empleado,estatus) WHERE estatus.id=empleado.idE");
        while (rs.next()) {
            Empleado e = new Empleado();
            e.setId(rs.getInt("id"));
            e.setNombre(rs.getString("nombre"));
            e.setIdE(rs.getString("es"));
            e.setSalario(rs.getFloat("Salario"));
            empleados.add(e);
        }
        return empleados;
    }
}
