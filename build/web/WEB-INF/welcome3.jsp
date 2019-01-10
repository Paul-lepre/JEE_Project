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
        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
        <!--Import Google Icon Font-->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    </head>
    <body>
        <div class="container">
            <h1> My JDBC Employees</h1>
            <form name="ListFrm" action="Controller">
                <table>
                    <thead>
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
                    </thead>
                    <tbody>
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
                    </tbody>
                </table>
                <button class="btn waves-effect waves-light light-blue darken-1" name="btn" value="Delete" type="submit">Delete
                    <i class="material-icons right">delete_forever</i>
                </button>
                <button class="btn waves-effect waves-light light-blue darken-1" name="btn" value="Details" type="submit">Details
                    <i class="material-icons right">account_box</i>
                </button>
                <button class="btn waves-effect waves-light light-blue darken-1" name="btn" value="Add" type="submit">Add
                    <i class="material-icons right">add</i>
                </button>
                <!-- Décommentez ces boutons si ceux du haut ne fonctionnent pas
                <input type="submit" name="btn" value="Delete" />
                <input type="submit" name="btn" value="Details" />
                <input type="submit" name="btn" value="Add" />
                -->
            </form>
        </div>
    </body>
</html>
