<%-- 
    Document   : addEmployee
    Created on : 18 déc. 2018, 09:06:45
    Author     : Gael
--%>

<%@page import="jee.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Page</title>
    </head>
    <body>
        <header>
            <!--Import Google Icon Font-->
            <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

            <!--Compiled and minified CSS -->
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

            <!--Compiled and minified JavaScript--> 
            <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>


            <!--Let browser know website is optimized for mobile-->
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        </header>
        <!--         <form name="addEmployee" action="Controller">-->
        <div class="container">
            <form name="loginFrm"  value="Add" action="Controller">
                <input type="hidden" name="idEmployee" value='<c:out value="${employeeChoose.id}"/>'/>
                <div class="card z-depth-5 indigo lighten-5">
                    <div class="card-content">
                        <span class="card-title">Details of <c:out value="${employeeChoose.firstname}"/> <c:out value="${employeeChoose.name}"/></span>
                        <!-- Name -->
                        <div class="input-field">
                            <input id="addName" type="text" class="validate" name="addName" value='<c:out value="${employeeChoose.name}"/>'/>
                            <label for="addName">Name</label>
                        </div>
                        
                        <!-- First Name -->
                        <div class="input-field">
                            <input id="addFirstName" type="text" class="validate" name="addFirstName" value='<c:out value="${employeeChoose.firstname}"/>'>
                            <label for="addFirstName">First Name</label>
                        </div>
                        
                        <!-- Home Phone -->
                        <div class="input-field">
                            <input id="addHomePhone" type="number" class="validate" name="addHomePhone" value='<c:out value="${employeeChoose.telhome}"/>'>
                            <label for="addHomePhone">Home Phone</label>
                        </div>
                        
                        <!-- Mobile Phone -->
                        <div class="input-field">
                            <input id="addMobilePhone" type="number" class="validate" name="addMobilePhone" value='<c:out value="${employeeChoose.telmob}"/>'>
                            <label for="addMobilePhone">Mobile Phone</label>
                        </div>
                        
                        <!-- Office Phone -->
                        <div class="input-field">
                            <input id="addOfficePhone" type="number" class="validate" name="addOfficePhone" value='<c:out value="${employeeChoose.telpro}"/>'>
                            <label for="addOfficePhone">Office Phone</label>
                        </div>
                        
                        <!-- Address -->
                        <div class="input-field">
                            <input id="addAddress" type="text" class="validate" name="addAddress" value='<c:out value="${employeeChoose.adress}"/>'>
                            <label for="addAddress">Address</label>
                        </div>
                        
                        <!-- Postal Code -->
                        <div class="input-field">
                            <input id="addPostalCode" type="text" class="validate" name="addPostalCode" value='<c:out value="${employeeChoose.postalcode}"/>'>
                            <label for="addPostalCode">Postal Code</label>
                        </div>
                        
                        <!-- City -->
                        <div class="input-field">
                            <input id="addCity" type="text" class="validate" name="addCity" value='<c:out value="${employeeChoose.city}"/>'>
                            <label for="addCity">City</label>
                        </div>
                        
                        <!-- Email -->
                        <div class="input-field">
                            <input id="addEmail" type="text" class="validate" name="addEmail" value='<c:out value="${employeeChoose.email}"/>'>
                            <label for="addEmail">Email</label>
                        </div>
                    </div>
                    <div class="card-action">
                        <button class="btn waves-effect waves-light indigo darken-2 right" name="btn" value="Update" type="submit">Save
                            <i class="material-icons left">update</i>
                        </button>
                        <button class="btn waves-effect waves-light red darken-1" name="btn" value="Cancel" type="submit">Cancel
                            <i class="material-icons left">cancel</i>
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
