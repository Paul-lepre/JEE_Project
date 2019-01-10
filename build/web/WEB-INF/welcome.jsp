<%-- 
    Document   : welcome
    Created on : 26 oct. 2018, 15:41:04
    Author     : Jacques
--%>

<%@page import="jee.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>	
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EmployeesScriptlets - Welcome</title>
    </head>
    <body>
        <h1> My JDBC Employees</h1>
        <!--        <form name="ListFrm" action="Controller">-->
        <form name="loginFrm"  value="List" action="Controller">
            <table>
                <tr>
                    <td>Sél</td>
                    <td>NAME</td>
                    <td>FIRST NAME</td>
                    <td>HOME PHONE</td>
                    <td>MOBILE PHONE</td>
                    <td>OFFICE PHONE</td>
                    <td>ADDRESS</td>
                    <td>POSTAL CODE</td>
                    <td>CITY</td>
                    <td>EMAIL</td>
                </tr>

                <c:forEach items="${employeesList}" var="emp">
                    <tr>
                        <td><input type="radio" value="${emp.id}" name="EmployeeSel"></td>
                        <td><c:out value="${emp.name}"/></td>
                        <td><c:out value="${emp.firstName}"/></td>
                        <td><c:out value="${emp.telHome}"/></td>
                        <td><c:out value="${emp.telMob}"/></td>
                        <td><c:out value="${emp.telPro}"/></td>
                        <td><c:out value="${emp.adress}"/></td>
                        <td><c:out value="${emp.postalCode}"/></td>
                        <td><c:out value="${emp.city}"/></td>
                        <td><c:out value="${emp.email}"/></td>
                    </tr>
                </c:forEach>
            </table>
            <input type="submit" name="btn" value="Delete" />
            <input type="submit" name="btn" value="Details" />
            <input type="submit" name="btn" value="Add" />
        </form>
    </body>
</html>
