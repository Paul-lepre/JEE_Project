/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jee.model;

import java.util.Collection;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import static utile.Constants.*;

/**
 *
 * @author dridr
 */
@Stateless
public class EmployeesSessionBean {

    @PersistenceContext(unitName = "ProjectJEE_version1PU")
    private EntityManager em;

    /*private static EntityManager em;
    public static void connect() {
    	EntityManagerFactory emf = Persistence.createEntityManagerFactory("credentialsDB") ;
    	em = emf.createEntityManager();
    }*/
    
    public Collection<Employees> getEmployees() {
        Query q = em.createQuery("SELECT e FROM Employees e");
        return q.getResultList();
    }

    public Collection<Credentials> getUsers() {
        Query q = em.createQuery("SELECT c FROM Credentials c");
        return q.getResultList();
    }
    
    public void addEmployee(Employees employee) {
        em.persist(employee);
    }
    
    public void updateEmployee(Employees employee) {
        em.refresh(employee);
    }
    
    public void deleteEmployee(String employeeID) {
        em.remove(employeeID);
    }

    //Automatically generated (could have been used instead of addEmployee)
    public void persist(Object object) {
        em.persist(object);
    }
    
}