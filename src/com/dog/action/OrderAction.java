package com.dog.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.dog.dao.CustomerDao;
import com.dog.dao.DogDao;
import com.dog.dao.OrderDao;
import com.dog.model.Customer;
import com.dog.model.Dog;
import com.dog.model.Order;

@Controller @Scope("prototype")
public class OrderAction {
	@Resource OrderDao orderDao;
	@Resource CustomerDao customerDao;
	@Resource DogDao dogDao;
	private Order order;
	private List<Order> orderList;
	private Customer customer;
	private Dog dog;
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
		orderDao.addOrder(ord);
		return "order_message";
	}
	public String showOrder(){
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
