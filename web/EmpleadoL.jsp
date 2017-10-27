<%-- 
    Document   : EmpleadoL
    Created on : 26/10/2017, 10:58:05 AM
    Author     : LabingXEON
--%>

<%@page import="model.Nomina"%>
<%@page import="model.Empleado"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Empleado</title>
    </head>


    <body>
        <h1>Lista Empleados</h1>
        <br>
        <table class="table">

            <tr>
                <td>Id Empleado </td>
                <td>Nombre Empleado</td>
                <td>Salario por mes</td>
                <td>Salario Total</td>
                <td>Prima</td>
                <td>Cesantias</td>
                <td>Intereses sobre Cesantias</td>
                <td>Vacaciones</td>
                <td>Salud Empresa</td>
                <td>Pension Empresa</td>
                <td>Total Empleado</td>

            </tr>

            <%if (request.getAttribute("nominas") != null) {
                    ArrayList<Nomina> array = (ArrayList<Nomina>) request.getAttribute("nominas");
                    for (Nomina e : array) {
            %>

            <tr>
                <td><%=e.getId()%></td>
                <td><%=e.getNombre()%></td>
                <td><%=e.getSalario()%></td>
                <td><%=e.getSalarioT()%></td>
                <td><%=e.getPrima()%></td>
                <td><%=e.getCesantias()%></td>
                <td><%=e.getIntces()%></td>
                <td><%=e.getVacaciones()%></td>
                <td><%=e.getSaludE()%></td>
                <td><%=e.getPensionE()%></td>
                <td><%=e.getCostoTotal()%></td>
            </tr>

            <%      }
                }
            %>

        </table>
        <br>
        <h1>Parafiscales</h1>
        <table class="table">
            <tr>
                <td>Sena</td>
                <td>ICBF</td>
                <td>Caja de Compensacion familiar</td>
            </tr>
            <tr>
                <td ><%=request.getAttribute("sena")%></td>
                <td><%=request.getAttribute("icbf")%></td>
                <td><%=request.getAttribute("ccf")%></td>
            </tr>
        </table>
            
            <h1>TOTAL</h1>
            <p><%=request.getAttribute("total")%></p>
    </body>
</html>
