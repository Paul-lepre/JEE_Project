/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utile;

/**
 *
 * @author Nico
 */
public class Constants {
    //SQL Request
    public static final String QUERY_ALL_EMPLOYEES = "SELECT * from EMPLOYEES";
    public static final String QUERY_ALL_USERS = "SELECT * from CREDENTIALS";
    public static final String QUERY_DELETE_ID = "DELETE from EMPLOYEES where ID =  ?";
    public static final String QUERY_ADD_EMPLOYEE = "INSERT INTO EMPLOYEES"
            + "(NAME,FIRSTNAME,TELHOME,TELMOB,TELPRO,ADRESS,POSTALCODE,CITY,EMAIL)"
            + "values (?,?,?,?,?,?,?,?,?)";
    public static final String QUERY_DETAIL_EMPLOYEE = "UPDATE EMPLOYEES SET NAME = ?,"
            + "FIRSTNAME = ?,TELHOME = ?,TELMOB = ?,TELPRO = ?,ADRESS = ?,POSTALCODE = ?,"
            + "CITY = ?,EMAIL = ? WHERE ID = ?";
    
    
    //Constantes related to the properties file (Database Connection)
    public static final String PATH_PROPERTIES_FILE = "utile/db.properties";
    public static final String DB_URL = "dbUrl";
    public static final String DB_USER = "dbUser";
    public static final String DB_PWD = "dbPwd";
    
    //Get the input value
    public static final String LOGIN_FIELD = "loginField";
    public static final String PWD_FIELD = "pwdField";
    public static final String BTN = "btn";
    public static final String EMPLOYEE_SEL = "EmployeeSel";
    
    public static final String ADD_NAME = "addName";
    public static final String ADD_FIRSTNAME = "addFirstName";
    public static final String ADD_HOMEPHONE = "addHomePhone";
    public static final String ADD_MOBPHONE = "addMobilePhone";
    public static final String ADD_PROPHONE = "addOfficePhone";
    public static final String ADD_ADDRESS = "addAddress";
    public static final String ADD_POSTALCODE = "addPostalCode";
    public static final String ADD_CITY = "addCity";
    public static final String ADD_EMAIL = "addEmail";
    public static final String ID_EMPLOYEE = "idEmployee";
    
    
    //Get the button value
    public static final String ACTION_LOGIN = "Login";
    public static final String ACTION_DETAILS = "Details";
    public static final String ACTION_DELETE = "Delete";
    public static final String ACTION_ADD = "Add";
    public static final String ACTION_CANCEL = "Cancel";
    public static final String ACTION_SAVE = "Save";
    public static final String ACTION_UPDATE = "Update";
 
    
    //Web Pages References
    public static final String INDEX_PAGE = "WEB-INF/login4.jsp";
    public static final String WELCOME_PAGE = "WEB-INF/welcome5.jsp";
    public static final String ADD_PAGE = "WEB-INF/addEmployee2.jsp";
    public static final String DETAILS_PAGE = "WEB-INF/detailsEmployee2.jsp";
}
