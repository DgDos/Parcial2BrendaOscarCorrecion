<%-- 
    Document   : EmpleadoL
    Created on : 26/10/2017, 10:58:05 AM
    Author     : LabingXEON
--%>

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
                        <thead>
                            <tr>
                                <th>Id Empleado </th>
                                <th>Nombre Empleado</th>
                                <th>Lugar Nacimiento</th>
                                <th>Estatus</th>
                                <th>Fecha Ingreso</th>
                                <th>Tipo Contrato</th>
                                <th>Departamento</th>
                                <th>Puesto</th>
                                <th>Turno</th>
                                <th>Sueldo</th>
                                <th>Regimen</th>
                                <th>Salario</th>
                                
                            </tr>
                        </thead>
                        <tbody>

                            <%if (request.getAttribute("empleados") != null) {
                                    ArrayList<Empleado> array = (ArrayList<Empleado>) request.getAttribute("empleados");
                                    for (Empleado e : array) {
                            %>

                            <tr>
                                <th scope="row"><%=e.getId()%></th>
                                <td><%=e.getNombre()%></td>
                                <td><%=e.getLugarN()%></td>
                                <td><%=(e.getIdE()).getNombre()%></td>
                                <td><%=e.getFechaI()%></td>
                                <td><%=(e.getIdTC()).getNombre()%></td>
                                <td><%=(e.getIdD()).getNombre()%></td>
                                <td><%=(e.getIdP()).getNombre()%></td>
                                <td><%=(e.getIdT()).getNombre()%></td>
                                <td><%=(e.getIdS()).getNombre()%></td>
                                <td><%=(e.getIdR()).getNombre()%></td>
                                <td><%=e.getSalario()%></td>
                            </tr>

                            <%      }
                                }
                            %>

                        </tbody>
                    </table>

    </body>
</html>
