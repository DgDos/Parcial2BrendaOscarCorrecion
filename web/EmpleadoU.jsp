<%-- 
    Document   : EmpleadoU
    Created on : 26/10/2017, 10:11:06 AM
    Author     : LabingXEON
--%>

<%@page import="model.Empleado"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar Empleado</title>
    </head>
    <body>
        <h1>Actualizar Empleado</h1>
         <form align="center" action="EmpleadoSer" method="POST">
        <select name="empleado">
            
                            <%
                                if (request.getAttribute("empleados") != null) {
                                    ArrayList<Empleado> array = (ArrayList<Empleado>) request.getAttribute("empleados");
                                    for (Empleado e : array) {     
                            %>
                            <option value="<%=e.getId()%>"><%=e.getNombre()%></option>
                            <%      }
                                }
                            %>
                            <br>
            <label align="center" >Salario</label>
            <input type="text" name="salario" maxlength="30" placeholder="máx. 10"  required/>
            <br>
            
        </select>
                            <button type="submit" >Actualizar</button>
         </form>
                            
                            
                            
    </body>
</html>
