<%-- 
    Document   : addEmployee
    Created on : 18 déc. 2018, 09:06:45
    Author     : Nico
--%>

<%@page import="jee.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--         <form name="addEmployee" action="Controller">-->
        <form name="loginFrm"  value="Add" action="Controller">
            <input type="hidden" name="idEmployee" value="<c:out value="${employeeChoose.id}"/>"/>
            <table>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="addName" value="<c:out value="${employeeChoose.name}"/>"/></td>
                </tr>
                <tr>
                    <td>First Name</td>
                    <td><input type="text" name="addFirstName" value="<c:out value="${employeeChoose.firstName}"/>"/></td>
                </tr>
                <tr>
                    <td>Home Phone</td>
                    <td><input type="text" name="addHomePhone" value="<c:out value="${employeeChoose.telHome}"/>"/></td>
                </tr>
                <tr>
                    <td>Mobile Phone</td>
                    <td><input type="text" name="addMobilePhone" value="<c:out value="${employeeChoose.telMob}"/>"/></td>
                </tr>
                <tr>
                    <td>Office Phone</td>
                    <td><input type="text" name="addOfficePhone" value="<c:out value="${employeeChoose.telPro}"/>"/></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><input type="text" name="addAddress" value="<c:out value="${employeeChoose.adress}"/>"/></td>
                </tr>
                <tr>
                    <td>Postal Code</td>
                    <td><input type="text" name="addPostalCode" value="<c:out value="${employeeChoose.postalCode}"/>"/></td>
                </tr>
                <tr>
                    <td>City</td>
                    <td><input type="text" name="addCity" value="<c:out value="${employeeChoose.city}"/>"/></td>
                    <td>Email</td>
                    <td><input type="text" name="addEmail" value="<c:out value="${employeeChoose.email}"/>"/></td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" name="btn" value="Update"/>
                        <input type="submit" name="btn" value="Cancel" />
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
