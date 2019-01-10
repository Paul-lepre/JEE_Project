/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.ejb.EJB;
import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import jee.model.Credentials;
import jee.model.DataAccess;
import jee.model.EmployeeBean;
import jee.model.Employees;
import jee.model.User;
import jee.model.EmployeesSessionBean;
import utile.Constants;
import static utile.Constants.*;

/**
 *
 * @author Jacques
 */
public class Controller extends HttpServlet {
    
    @EJB
    private EmployeesSessionBean employeesSessionBean;

    ArrayList<Employees> listEmployees;
    ArrayList<Credentials> listUsers;
    DataAccess db;
    String queryEmployees;
    String queryUser;
    String queryDelete;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //To be able to use "session" object like we did in the jsp
        HttpSession session = request.getSession();
        
        /*
            Switch Case ICI avec
            
        Pour la page Login:
        String btnEnter = request.getParameter(Constants.BTN_LOGIN);
        */
        
        //If all JPA sections work, this is the start of a section that should be remove
        db = new DataAccess();
        db.getEmployees(
                db.getResultSet(
                        db.getStatement(
                                db.getConnection()), QUERY_ALL_EMPLOYEES));
        //If all JPA sections work, this is the end of a section that should be remove
        
        
        // Credentials retrieved from the database
        listUsers = new ArrayList<>();
        listUsers.addAll(employeesSessionBean.getUsers());
        
         //List of employees from database
        listEmployees = new ArrayList<>();
        listEmployees.addAll(employeesSessionBean.getEmployees());
        
        //Store the list of employees in the scope object
        session.setAttribute("employeesList",listEmployees);
        
        // User input
        String loginEntered = request.getParameter(Constants.LOGIN_FIELD);
        String pwdEntered = request.getParameter(Constants.PWD_FIELD);
        
        String action = request.getParameter(Constants.BTN);
        
        
        if(action != null){
            if(action.equals(ACTION_LOGIN)){
                boolean find = false;
                for(Credentials u : listUsers){
                    if(loginEntered.equals(u.getLogin()) && pwdEntered.equals(u.getPassword())){
                        request.getRequestDispatcher(Constants.WELCOME_PAGE).forward(request, response);
                        find = true;
                    }
                }
                if(find==false){
                    String errorConnection;
                    if(loginEntered.equals("")|| pwdEntered.equals("")){
                        errorConnection = "You must enter values in both fields";
                    }
                    else{
                        errorConnection = "Connection failed! Verify your login/password and try again.";
                    }
                    session.setAttribute("keyError", errorConnection);
                    request.getRequestDispatcher(Constants.INDEX_PAGE).forward(request, response);
                }
                session.removeAttribute("keyError");
            }
            else if (action.equals(ACTION_DELETE)){
                /*
                listEmployees.removeAll(employeesSessionBean.getEmployees());
                try {
                    employeesSessionBean.deleteEmployee(request.getParameter(EMPLOYEE_SEL));
                }
                catch(javax.ejb.EJBException e)
                {
                    System.out.println(e.getMessage());
                }
                listEmployees.addAll(employeesSessionBean.getEmployees());
                
                //Store the list of employees in the scope object
                session.setAttribute("employeesList",listEmployees);*/
                
                //Start of section that should be replace by th JPA part 
                try{
                    listEmployees.removeAll(employeesSessionBean.getEmployees());
                    db.deleteStatement(request.getParameter(EMPLOYEE_SEL));
                     //List of employees from database
                    listEmployees.addAll(employeesSessionBean.getEmployees());

                    //Store the list of employees in the scope object
                    session.setAttribute("employeesList",listEmployees);
                }catch(SQLException e){
                    System.out.println(e.getMessage());
                }
                //End of section that should be replace by th JPA part 
                
                request.getRequestDispatcher(Constants.WELCOME_PAGE).forward(request, response);
            }
            else if (action.equals(ACTION_ADD)){
                request.getRequestDispatcher(Constants.ADD_PAGE).forward(request, response);
            }
            else if (action.equals(ACTION_SAVE)){
                /*Employees employee = new Employees();
                employee.setName(request.getParameter(ADD_NAME));
                employee.setFirstname(request.getParameter(ADD_FIRSTNAME));
                employee.setTelhome(request.getParameter(ADD_HOMEPHONE));
                employee.setTelmob(request.getParameter(ADD_MOBPHONE));
                employee.setTelpro(request.getParameter(ADD_PROPHONE));
                employee.setAdress(request.getParameter(ADD_ADDRESS));
                employee.setPostalcode(request.getParameter(ADD_POSTALCODE));
                employee.setCity(request.getParameter(ADD_CITY));
                employee.setEmail(request.getParameter(ADD_EMAIL));
                
                try {
                    employeesSessionBean.addEmployee(employee);
                }
                catch(javax.ejb.EJBException e)
                {
                    System.out.println(e.getMessage());
                }
                listEmployees.add(employee);
                
                //Store the list of employees in the scope object
                session.setAttribute("employeesList",listEmployees);*/
                
                //Start of section that should be replace by th JPA part 
                EmployeeBean employee = new EmployeeBean();
                employee.setName(request.getParameter(ADD_NAME));
                employee.setFirstName(request.getParameter(ADD_FIRSTNAME));
                employee.setTelHome(request.getParameter(ADD_HOMEPHONE));
                employee.setTelMob(request.getParameter(ADD_MOBPHONE));
                employee.setTelPro(request.getParameter(ADD_PROPHONE));
                employee.setAdress(request.getParameter(ADD_ADDRESS));
                employee.setPostalCode(request.getParameter(ADD_POSTALCODE));
                employee.setCity(request.getParameter(ADD_CITY));
                employee.setEmail(request.getParameter(ADD_EMAIL));

                try{
                    listEmployees.removeAll(employeesSessionBean.getEmployees());
                    db.addStatement(employee);
                    //List of employees from database
                    listEmployees.addAll(employeesSessionBean.getEmployees());

                    //Store the list of employees in the scope object
                    session.setAttribute("employeesList",listEmployees);
                }catch(SQLException e){
                    System.out.println(e.getMessage());
                }
                //End of section that should be replace by th JPA part
                
                request.getRequestDispatcher(Constants.WELCOME_PAGE).forward(request, response);
            }
            else if (action.equals(ACTION_DETAILS)){
                String id = request.getParameter(EMPLOYEE_SEL);
                if(id == null){
                    request.getRequestDispatcher(Constants.WELCOME_PAGE).forward(request, response);
                }
                else{
                    Employees employee = new Employees();
                
                    for (Employees emp : listEmployees) {
                        if (Integer.parseInt(id) == emp.getId()) {
                            employee = emp;
                        }
                    }
                    session.setAttribute("employeeChoose", employee);
                    request.getRequestDispatcher(Constants.DETAILS_PAGE).forward(request, response);
                }
                
            }
            else if (action.equals(ACTION_UPDATE)){
                /*Employees employee = new Employees();
                employee.setName(request.getParameter(ADD_NAME));
                employee.setFirstname(request.getParameter(ADD_FIRSTNAME));
                employee.setTelhome(request.getParameter(ADD_HOMEPHONE));
                employee.setTelmob(request.getParameter(ADD_MOBPHONE));
                employee.setTelpro(request.getParameter(ADD_PROPHONE));
                employee.setAdress(request.getParameter(ADD_ADDRESS));
                employee.setPostalcode(request.getParameter(ADD_POSTALCODE));
                employee.setCity(request.getParameter(ADD_CITY));
                employee.setEmail(request.getParameter(ADD_EMAIL));
                employee.setId(Integer.parseInt(request.getParameter(ID_EMPLOYEE)));
                
                
                try {
                    employeesSessionBean.updateEmployee(employee);
                }
                catch(javax.ejb.EJBException e)
                {
                    System.out.println(e.getMessage());
                }
                listEmployees.remove(Integer.parseInt(request.getParameter(ID_EMPLOYEE)));
                listEmployees.add(Integer.parseInt(request.getParameter(ID_EMPLOYEE)),employee);
                
                //Store the list of employees in the scope object
                session.setAttribute("employeesList",listEmployees);*/
                
                
                //Start of section that should be replace by th JPA part 
                EmployeeBean employee = new EmployeeBean();
                employee.setName(request.getParameter(ADD_NAME));
                employee.setFirstName(request.getParameter(ADD_FIRSTNAME));
                employee.setTelHome(request.getParameter(ADD_HOMEPHONE));
                employee.setTelMob(request.getParameter(ADD_MOBPHONE));
                employee.setTelPro(request.getParameter(ADD_PROPHONE));
                employee.setAdress(request.getParameter(ADD_ADDRESS));
                employee.setPostalCode(request.getParameter(ADD_POSTALCODE));
                employee.setCity(request.getParameter(ADD_CITY));
                employee.setEmail(request.getParameter(ADD_EMAIL));

                try{
                    listEmployees.removeAll(employeesSessionBean.getEmployees());
                    db.detailsStatement(employee);
                     //List of employees from database
                    listEmployees.addAll(employeesSessionBean.getEmployees());

                    //Store the list of employees in the scope object
                    session.setAttribute("employeesList",listEmployees);
                }catch(SQLException e){
                    System.out.println(e.getMessage());
                }
                //End of section that should be replace by th JPA part
                
                
                    
                request.getRequestDispatcher(Constants.WELCOME_PAGE).forward(request, response);
            }
            else if (action.equals(ACTION_CANCEL)){
                request.getRequestDispatcher(Constants.WELCOME_PAGE).forward(request, response);
            }
            else if (action.equals("Home")){
                request.getRequestDispatcher(Constants.INDEX_PAGE).forward(request, response);
            }
        }
        //At the begining when contronler is launch first time (When no buttun was clicked)
        else
        {
            request.getRequestDispatcher(Constants.INDEX_PAGE).forward(request, response);
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
