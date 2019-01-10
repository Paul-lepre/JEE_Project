<%-- 
    Document   : login2
    Created on : 14 déc. 2018, 10:26:12
    Author     : Nico
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <!--Title of the page-->
        <title>Login Form</title>
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
        <div class="container">
            <div class="card indigo lighten-5 z-depth-5">
                <div class="card-content">
                    <span class="card-title">Login</span>

                    <!-- Login Form -->
                    <form id="Login" action="Controller">

                        <!-- Error Message 1 -->
                        <c:if test='${sessionScope["keyError"] ne null}'>
                            <div class="red-text text-darken-1">
                                <c:out value='${sessionScope["keyError"]}'/>
                            </div>
                        </c:if>

                        <!-- Username Text Input -->
                        <div class="input-field">
                            <input id="login_username" type="text" class="validate" name="loginField" autofocus>
                            <label for="loginField">Login</label>
                        </div>

                        <!-- Password Text Input -->
                        <div class="input-field">
                            <input id="login_password" type="password" class="validate" name="pwdField">
                            <label for="pwdField">Password</label>
                        </div>

                        <!-- Login Button -->
                        <!--<input type="submit" name="btn" value="Login" />-->
                        <button class="btn waves-effect waves-light indigo darken-2" name="btn" value="Login" type="submit">Login
                            <i class="material-icons right">send</i>
                        </button>

                    </form>
                </div>
            </div>
        </div>
        <footer>
            <!--JavaScript at end of body for optimized loading-->
            <script type="text/javascript" src="js/materialize.min.js"></script>
        </footer>
    </body>

</html>

