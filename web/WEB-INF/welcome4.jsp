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
            <div class="card-panel grey lighten-5 z-depth-4">
                <h1> My Employee List</h1>
                <!-- If the list is empty, we only diplay the Add button, if it's not empty, we display the table with all the employee -->
                <c:choose>
                    <c:when test="${empty employeesList}">
                        <form name="ListFrm" action="Controller">
                            <blockquote class="light-blue-text text-darken-4 flow-text" style="font-weight: bold;">
                                No members yet, click on the Add button to add them in the party.
                            </blockquote>
                            <button class="btn waves-effect waves-light indigo darken-2 pulse" name="btn" value="Add" type="submit">Add
                                <i class="material-icons left">add</i>
                            </button>
                        </form>
                    </c:when>
                    <c:otherwise>
                        <form name="ListFrm" action="Controller">
                            <table class="highlight responsive-table centered">
                                <thead>
                                    <tr>
                                        <th>Select</th>
                                        <th>NAME</th>
                                        <th>FIRST NAME</th>
                                        <th>HOME PHONE</th>
                                        <th>MOBILE PHONE</th>
                                        <th>OFFICE PHONE</th>
                                        <th>ADDRESS</th>
                                        <th>POSTAL CODE</th>
                                        <th>CITY</th>
                                        <th>EMAIL</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${employeesList}" var="emp">
                                        <tr>
                                            <td><label><input type="radio" value="${emp.id}" name="EmployeeSel"><span></span></label></td>
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
                            <button class="btn waves-effect waves-light indigo darken-2" name="btn" value="Delete" type="submit">Delete
                                <i class="material-icons left">delete_forever</i>
                            </button>
                            <button class="btn waves-effect waves-light indigo darken-2" name="btn" value="Details" type="submit">Details
                                <i class="material-icons left">account_box</i>
                            </button>
                            <button class="btn waves-effect waves-light indigo darken-2" name="btn" value="Add" type="submit">Add
                                <i class="material-icons left">add</i>
                            </button>
                            <!-- Décommentez ces boutons si ceux du haut ne fonctionnent pas
                            <input type="submit" name="btn" value="Delete" />
                            <input type="submit" name="btn" value="Details" />
                            <input type="submit" name="btn" value="Add" />
                            -->
                        </form>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </body>
</html>
