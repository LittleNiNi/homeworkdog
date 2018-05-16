package com.dog.action;

import java.util.ArrayList;
import java.util.Map;

import javax.annotation.Resource;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


import org.apache.struts2.interceptor.SessionAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.dog.dao.CustomerDao;
import com.dog.model.Customer;
import com.opensymphony.xwork2.ActionSupport;

@Controller @Scope("prototype")
public class CustomerAction extends ActionSupport implements SessionAware{
	
	private static final long serialVersionUID = 1L;
	
	@Resource CustomerDao customerDao;
	private Customer customer;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="customer")
	private Map<String,Object> session;
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public Map<String,Object> getSession() {
		return session;
	}
	public void setSession(Map<String,Object> session) {
		this.session = session;
	}
	
	private String errMessage;
	public String getErrMessage() {
		return errMessage;
	}
	public void setErrMessage(String errMessage) {
		this.errMessage = errMessage;
	}
	
	
	public String reg() throws Exception{
		customerDao.AddCustomer(customer);
		session.put("customer", customer);
		return "show_view";
	}
	/*public String reg() throws Exception{
		customerDao.addCustomer(customer);
		session.put("customer", customer);
		return "show_view";
	}
	

	public String login() {
		Customer db_customer = (Customer)customerDao.QueryCustomerInfo(customer.getName()).get(0);
		if(db_customer == null) { 
			this.errMessage = " 账号不存在 ";
			System.out.print(this.errMessage);
			return INPUT;
		} else if( !db_customer.getPassword().equals(customer.getPassword())) {
			this.errMessage = " 密码不正确! ";
			System.out.print(this.errMessage);
			return INPUT;
		}
		return "show_view";
	}
	
	*/
	
	/* 验证用户登录 */
	public String login() {
		
		ArrayList<Customer> listCustomer = customerDao.QueryCustomerInfo(customer.getName());
		if(listCustomer.size()==0) { 
			
			this.errMessage = " 账号不存在 ";
			System.out.print(this.errMessage);
			return "input";
			
		} 
		else{
			
		    Customer db_customer = listCustomer.get(0);
			if(!db_customer.getPassword().equals(customer.getPassword())) {
			
				this.errMessage = " 密码不正确! ";
				System.out.print(this.errMessage);
				return "input";
			
		    }else{
			
				session.put("customer", db_customer);
				return "success";
		    }
		}
	}

	
	
	
//	public String login() {
//		
//		ArrayList<Customer> listCustomer = customerDao.QueryCustomerInfo(customer.getName());
//		if(listCustomer.size()==0) { 
//			
//			this.errMessage = " 账号不存在 ";
//			System.out.print(this.errMessage);
//			return "input";	
//		} 
//		else{
//			
//		    Customer db_customer = listCustomer.get(0);
//			if(!db_customer.getPassword().equals(customer.getPassword())) {
//			
//			this.errMessage = " 密码不正确! ";
//			System.out.print(this.errMessage);
//			return "input";
//			
//		    }else{
//			
//			session.put("customer",db_customer);
//			prePage = (String) session.get("prePage");
//			System.out.println("将要跳到："+ prePage);
//			session.remove("prePage");  
//			return "success";
//			
//		    }
//		}
//		
//	}
	
	
	//private Map<String,Object> session;
	private String prePage;
	public String getPrePage() {
		return prePage;
	}

	public void setPrePage(String prePage) {
		this.prePage = prePage;
	}

	public String re(){
		System.out.println("hhaa");
		session.remove("customer");
		return "re";
	}
}
