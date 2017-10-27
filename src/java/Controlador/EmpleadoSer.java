/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import dao.EmpleadoDAO;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Empleado;
import model.Nomina;

/**
 *
 * @author LabingXEON
 */
public class EmpleadoSer extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action=request.getParameter("action");
        if(action.equals("update")){
            EmpleadoDAO e=new EmpleadoDAO();
            ArrayList<Empleado> empleados=new ArrayList();
            try {
                empleados=e.getAllEmpleados();
            } catch (SQLException ex) {
                Logger.getLogger(EmpleadoSer.class.getName()).log(Level.SEVERE, null, ex);
            }
            request.setAttribute("empleados", empleados);
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/EmpleadoU.jsp");
            rd.forward(request, response);
        }
        if(action.equals("listar")){
            EmpleadoDAO e=new EmpleadoDAO();
            ArrayList<Nomina> nominas=new ArrayList();
            try {
                nominas=e.getAllSalarios();
            } catch (SQLException ex) {
                Logger.getLogger(EmpleadoSer.class.getName()).log(Level.SEVERE, null, ex);
            }
            long sena=0,ICBF=0,ccf=0,total=0;
            for(Nomina n: nominas){
                sena+=n.getSena();
                ICBF+=n.getIcbf();
                ccf+=n.getCcf();
                total+=n.getCostoTotal();
            }
            request.setAttribute("nominas", nominas);
            request.setAttribute("sena", sena);
            request.setAttribute("icbf", ICBF);
            request.setAttribute("ccf", ccf);
            request.setAttribute("total", total);
            
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/EmpleadoL.jsp");
            rd.forward(request, response);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       int idE=Integer.parseInt(request.getParameter("empleado"));
       float salario=Float.parseFloat(request.getParameter("salario"));
       EmpleadoDAO e=new EmpleadoDAO();
        try {
            e.updateEmpleado(idE, salario);
        } catch (SQLException ex) {
            Logger.getLogger(EmpleadoSer.class.getName()).log(Level.SEVERE, null, ex);
        }
        response.sendRedirect("index.jsp");
    }
}
