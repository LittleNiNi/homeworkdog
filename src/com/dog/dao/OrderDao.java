package com.dog.dao;

import java.util.ArrayList;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dog.model.Customer;
import com.dog.model.Dog;
import com.dog.model.Order;

@Service @Transactional
public class OrderDao {
	@Resource SessionFactory factory;
	
	
	public void AddOrder(Order order) throws Exception{
		Session s= factory.getCurrentSession();
		s.save(order);
		
	}
	
	public void DeleteOrder(Integer orderid) throws Exception {
		Session s= factory.getCurrentSession();
		Object order= s.load(Order.class, orderid);
		s.delete(order);
		
	}
	
    public void deleteOrder2(Order order) throws Exception {
		Session s = factory.getCurrentSession();
		s.delete(order);
	}
	
    public void UpdateOrder(Order order) throws Exception {
        Session s = factory.getCurrentSession();
        s.update(order);
    }
    
    public ArrayList<Order> QueryAllOrder() {
        Session s = factory.getCurrentSession();
        String hql = "From Order";
        Query q = s.createQuery(hql);
        List orderList = q.list();
        return (ArrayList<Order>) orderList;
    }
    
    public Order GetOrderById(Integer orderid) {
        Session s = factory.getCurrentSession();
        Order order = (Order)s.get(Order.class, orderid);
        return order;
    }
    public ArrayList<Order> QueryOrderInfo(Customer customer,Dog dog){
    	Session s=factory.getCurrentSession();
    	String hq1="From Order order where 1=1";
    	if(null!=customer&&customer.getCustomerid()!=0)
    		hq1=hq1+"and order.customer.customerid like'%"+customer.getCustomerid()+"%'";
    	if(null!=dog&&null!=dog.getDogname())
    		hq1=hq1+"and order.dog.dogid like'%"+dog.getDogname()+"%'";
    	Query q=s.createQuery(hq1);
    	List orderList=q.list();
    	return (ArrayList<Order>) orderList;
    }
    
}
