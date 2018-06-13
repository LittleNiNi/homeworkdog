package com.dog.dao;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dog.model.Customer;

@Service @Transactional
public class CustomerDao {
	@Resource SessionFactory factory;
	
	public void AddCustomer(Customer customer) throws Exception{
		Session s= factory.getCurrentSession();
		s.save(customer);
		
	}
	
	public void DeleteCustomer(Integer customerId)throws Exception {
		Session s= factory.getCurrentSession();
		Object customer= s.load(Customer.class, customerId);
		s.delete(customer);
	}
	
    public void UpdateCustomer(Customer customer) throws Exception {
        Session s = factory.getCurrentSession();
        s.update(customer);
    }
    public ArrayList<Customer> QueryAllCustomer() {
        Session s = factory.getCurrentSession();
        String hql = "From Customer";
        Query q = s.createQuery(hql);
        List customerList = q.list();
        return (ArrayList<Customer>) customerList;
    }

    /*根据主键获取对象*/
    public Customer GetCustomerById(Integer customerid) {
        Session s = factory.getCurrentSession();
        Customer customer = (Customer)s.get(Customer.class, customerid);
        return customer;
    }
    
    public ArrayList<Customer> QueryCustomerInfo(String name){
    	Session s=factory.getCurrentSession();
    	List customerList;
    	String hq1="From Customer customer where 1=1";
    	if(!name.equals("")){
    		
    		hq1=hq1+"and customer.name like'%"+name+"%'";
    		Query q=s.createQuery(hq1);
    		customerList=q.list();
    	}else{
    		customerList=null;
    	}
    	return (ArrayList<Customer>) customerList;
    }

    

}
