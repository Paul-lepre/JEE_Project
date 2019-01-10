/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jee.model;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import utile.Constants;
import static utile.Constants.QUERY_ADD_EMPLOYEE;
import static utile.Constants.QUERY_DELETE_ID;

/**
 *
 * @author Jacques
 */
public class DataAccess {

    private Connection dbConn;
    private Statement stmt;
    private ResultSet rs;
    private String dbUrl;
    private String user;
    private String pwd;
    private ArrayList<EmployeeBean> employeesList;
    private ArrayList<User> usersList;

    public Connection getConnection() throws IOException {
        try {
            Properties prop = new Properties();
            InputStream input;
            ClassLoader cl = Thread.currentThread().getContextClassLoader();
            input = cl.getResourceAsStream(Constants.PATH_PROPERTIES_FILE);
            prop.load(input);
            
            dbUrl = prop.getProperty(Constants.DB_URL);
            user = prop.getProperty(Constants.DB_USER);
            pwd = prop.getProperty(Constants.DB_PWD);

            dbConn = DriverManager.getConnection(dbUrl, user, pwd);

        } catch (SQLException | IOException ex) {
             Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return dbConn;
    }

    public Statement getStatement(Connection dbConn) {
        try {
            stmt = dbConn.createStatement();
        } catch (SQLException sqle) {
            System.out.println(sqle.getMessage());

        }
        return stmt;

    }

    public ResultSet getResultSet(Statement stmt, String query) {

        try {
            rs = stmt.executeQuery(query);

        } catch (SQLException sqle) {
            System.out.println(sqle.getMessage());

        }
        return rs;

    }
    
    public void deleteStatement(String id) throws SQLException {
        String query = QUERY_DELETE_ID;
        PreparedStatement deleteEmployee = dbConn.prepareStatement(query);
        deleteEmployee.setString(1, id);
        deleteEmployee.executeUpdate();
    }
    
    public void addStatement(EmployeeBean employee) throws SQLException {
        String query = Constants.QUERY_ADD_EMPLOYEE;
        PreparedStatement addEmployee = dbConn.prepareStatement(query);
        addEmployee.setString(1, employee.getName());
        addEmployee.setString(2, employee.getFirstName());
        addEmployee.setString(3, employee.getTelHome());
        addEmployee.setString(4, employee.getTelMob());
        addEmployee.setString(5, employee.getTelPro());
        addEmployee.setString(6, employee.getAdress());
        addEmployee.setString(7, employee.getPostalCode());
        addEmployee.setString(8, employee.getCity());
        addEmployee.setString(9, employee.getEmail());
        addEmployee.executeUpdate();
    }
    
    public void detailsStatement(EmployeeBean employee) throws SQLException {
        String query = Constants.QUERY_DETAIL_EMPLOYEE;
        PreparedStatement addEmployee = dbConn.prepareStatement(query);
        addEmployee.setString(1, employee.getName());
        addEmployee.setString(2, employee.getFirstName());
        addEmployee.setString(3, employee.getTelHome());
        addEmployee.setString(4, employee.getTelMob());
        addEmployee.setString(5, employee.getTelPro());
        addEmployee.setString(6, employee.getAdress());
        addEmployee.setString(7, employee.getPostalCode());
        addEmployee.setString(8, employee.getCity());
        addEmployee.setString(9, employee.getEmail());
        addEmployee.setInt(10, employee.getId());
        addEmployee.executeUpdate();
    }
    

    public ArrayList getEmployees(ResultSet rs) {
        employeesList = new ArrayList<EmployeeBean>();
        try {
            while (rs.next()) {
                EmployeeBean employee = new EmployeeBean();
                employee.setId(rs.getInt("ID"));
                employee.setName(rs.getString("NAME"));
                employee.setFirstName(rs.getString("FIRSTNAME"));
                employee.setTelHome(rs.getString("TELHOME"));
                employee.setTelMob(rs.getString("TELMOB"));
                employee.setTelPro(rs.getString("TELPRO"));
                employee.setAdress(rs.getString("ADRESS"));
                employee.setPostalCode(rs.getString("POSTALCODE"));
                employee.setCity(rs.getString("CITY"));
                employee.setEmail(rs.getString("EMAIL"));
                employeesList.add(employee);
            }
        } catch (SQLException sqle) {
            System.out.println(sqle.getMessage());
        }
        return employeesList;
    }

    public String showEmployees(ArrayList<EmployeeBean> employeesList) {
           String output = "";
        for (EmployeeBean empl : employeesList) {
            output = output + empl.getName() + "  -  "+empl.getFirstName() + "  -  " +
                    empl.getTelHome()+ "  -  "+empl.getTelMob() + "  -  " +
                    empl.getTelPro()+ "  -  "+empl.getAdress() + "  -  " +
                    empl.getPostalCode()+ "  -  " + empl.getCity() + "  -  " + empl.getEmail();
        }
        
        return output;

    }
    
        public ArrayList getUsers(ResultSet rs) {
        usersList = new ArrayList<User>();
        try {
            while (rs.next()) {
                User u = new User();
                u.setLogin(rs.getString("LOGIN"));
                u.setPwd(rs.getString("PASSWORD"));
                usersList.add(u);
            }
        } catch (SQLException sqle) {
            System.out.println(sqle.getMessage());
        }
        return usersList;
    }

}
