package com.dog.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;


import org.apache.struts2.ServletActionContext;
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
	
	
	
	private File customerPhoto;
	private String customerPhotoFileName;
    private String customerPhotoContentType;

	//public String change() throws Exception{
		//   String path = ServletActionContext.getServletContext().getRealPath("/images");
			 
		 
	
	
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
	public String getCustomerPhotoFileName() {
		return customerPhotoFileName;
	}
	public void setCustomerPhotoFileName(String customerPhotoFileName) {
		this.customerPhotoFileName = customerPhotoFileName;
	}
	public String getCustomerPhotoContentType() {
		return customerPhotoContentType;
	}
	public void setCustomerPhotoContentType(String customerPhotoContentType) {
		this.customerPhotoContentType = customerPhotoContentType;
	}

	public String edit() throws Exception{
		//System.out.println("?????");
		System.out.println(customer.getCustomerid());
		System.out.println(customer.getName());
		System.out.println(customer.getAddress());
		System.out.println(customer.getPassword());
		customerDao.UpdateCustomer(customer);
		return "e";
	}
	
}
