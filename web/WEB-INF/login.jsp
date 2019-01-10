<%-- 
    Document   : login
    Created on : 26 oct. 2018, 15:38:24
    Author     : Jacques
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EmployeesScriptlets - Login page</title>
    </head>
    <body>
        <%
            String err = (String) session.getAttribute("keyError");
            if(err != null){
                out.println("<h3 style=color:#FF0000>"+session.getAttribute("keyError")+"</h3>");
                session.removeAttribute("keyError");
            }
            %>
        <form name="loginFrm" value="Login" action="Controller">
            Login <input type="text" name="loginField" />
            <br />
            Pass <input type="text" name="pwdField" />
            <br />
            <input type="submit" name="btn" value="Login" />
        </form>
    </body>
</html>
