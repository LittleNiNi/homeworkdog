package com.dog.action;

import java.util.List;

import javax.annotation.Resource;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.dog.dao.CustomerDao;
import com.dog.dao.DogDao;
import com.dog.dao.OrderDao;
import com.dog.model.Customer;
import com.dog.model.Dog;
import com.dog.model.Order;
import com.opensymphony.xwork2.ActionSupport;

@Controller @Scope("prototype")
public class OrderAction extends ActionSupport{
	
	 /*业务层对象*/
	@Resource OrderDao orderDao;
	@Resource CustomerDao customerDao;
	@Resource DogDao dogDao;
	
	private Order order;
	private List<Order> orderList;
	private Customer customer;
	private Dog dog;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="order")
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	public List<Order> getOrderList() {
		return orderList;
	}
	public void setOrderList(List<Order> orderList) {
		this.orderList = orderList;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public Dog getDog() {
		return dog;
	}
	public void setDog(Dog dog) {
		this.dog = dog;
	}
	public String addOrder() throws Exception{
		
		customer=customerDao.QueryCustomerInfo(customer.getName()).get(0);
		Order ord=new Order();
		ord.setCustomer(customer);
		ord.setDog(dog);
		ord.setDognum(1);
		ord.setTotal(dogDao.GetDogById(dog.getDogid()).getUnitprice()*1);
		orderDao.AddOrder(ord);
		return "order_message";
	}
	public String showOrder(){
		 //将系统设定为用户名不重复，因此在系统中查询到第一个该名称用户即可
    	System.out.println(customer.getName());
		Customer cus=customerDao.QueryCustomerInfo(customer.getName()).get(0);
		orderList=orderDao.QueryOrderInfo(cus, null);
		return "show_view";
	}
	
	
	
	public String showDetail(){
		System.out.print(order.getOrderid());
		order=orderDao.GetOrderById(order.getOrderid());
		return "detail_view";
	}
	public String queryOrders() throws Exception{
		orderList=orderDao.QueryOrderInfo(customer, dog);
		return "show_view";
	}

}
