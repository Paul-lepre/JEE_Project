<%-- 
    Document   : addEmployee
    Created on : 18 déc. 2018, 09:06:45
    Author     : Gael
--%>

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
                <div class="card z-depth-5 indigo lighten-5">
                    <div class="card-content">
                        <span class="card-title">Add employee</span>
                        <!-- Name -->
                        <div class="input-field">
                            <input id="addName" type="text" class="validate" name="addName" autofocus>
                            <label for="addName">Name</label>
                        </div>
                        
                        <!-- First Name -->
                        <div class="input-field">
                            <input id="addFirstName" type="text" class="validate" name="addFirstName">
                            <label for="addFirstName">First Name</label>
                        </div>
                        
                        <!-- Home Phone -->
                        <div class="input-field">
                            <input id="addHomePhone" type="number" class="validate" name="addHomePhone">
                            <label for="addHomePhone">Home Phone</label>
                        </div>
                        
                        <!-- Mobile Phone -->
                        <div class="input-field">
                            <input id="addMobilePhone" type="number" class="validate" name="addMobilePhone">
                            <label for="addMobilePhone">Mobile Phone</label>
                        </div>
                        
                        <!-- Office Phone -->
                        <div class="input-field">
                            <input id="addOfficePhone" type="number" class="validate" name="addOfficePhone">
                            <label for="addOfficePhone">Office Phone</label>
                        </div>
                        
                        <!-- Address -->
                        <div class="input-field">
                            <input id="addAddress" type="text" class="validate" name="addAddress">
                            <label for="addAddress">Address</label>
                        </div>
                        
                        <!-- Postal Code -->
                        <div class="input-field">
                            <input id="addPostalCode" type="text" class="validate" name="addPostalCode">
                            <label for="addPostalCode">Postal Code</label>
                        </div>
                        
                        <!-- City -->
                        <div class="input-field">
                            <input id="addCity" type="text" class="validate" name="addCity">
                            <label for="addCity">City</label>
                        </div>
                        
                        <!-- Email -->
                        <div class="input-field">
                            <input id="addEmail" type="text" class="validate" name="addEmail">
                            <label for="addEmail">Email</label>
                        </div>
                    </div>
                    <div class="card-action">
                        <button class="btn waves-effect waves-light indigo darken-2 right" name="btn" value="Save" type="submit">Save
                            <i class="material-icons left">save</i>
                        </button>
                        <button class="btn waves-effect waves-light red darken-1" name="btn" value="Cancel" type="submit">Cancel
                            <i class="material-icons left">cancel</i>
                        </button>
                    </div>
                    <!--
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
                        </tr>
                        <tr>
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
                    -->
                </div>
            </form>
        </div>
    </body>
</html>
