<%-- 
    Document   : addEmployee
    Created on : 18 déc. 2018, 09:06:45
    Author     : Nico
--%>

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
            <table>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="addName" /></td>
                </tr>
                <tr>
                    <td>First Name</td>
                    <td><input type="text" name="addFirstName" /></td>
                </tr>
                <tr>
                    <td>Home Phone</td>
                    <td><input type="text" name="addHomePhone" /></td>
                </tr>
                <tr>
                    <td>Mobile Phone</td>
                    <td><input type="text" name="addMobilePhone" /></td>
                </tr>
                <tr>
                    <td>Office Phone</td>
                    <td><input type="text" name="addOfficePhone" /></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><input type="text" name="addAddress" /></td>
                </tr>
                <tr>
                    <td>Postal Code</td>
                    <td><input type="text" name="addPostalCode" /></td>
                </tr>
                <tr>
                    <td>City</td>
                    <td><input type="text" name="addCity" /></td>
                    <td>Email</td>
                    <td><input type="text" name="addEmail" /></td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" name="btn" value="Save"/>
                        <input type="submit" name="btn" value="Cancel" />
                    </td>
                </tr>

            </table>
        </form>
    </body>
</html>
