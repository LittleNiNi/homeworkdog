package com.dog.action;

import java.util.List;
import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;


import com.dog.dao.DogDao;
import com.dog.model.Customer;
import com.dog.model.Dog;
import com.opensymphony.xwork2.ActionSupport;
@Controller @Scope("prototype")
public class DogAction extends ActionSupport{
	@Resource DogDao dogDao;
	private Dog dog;
	public Dog getDog() {
		return dog;
	}
	public void setDog(Dog dog) {
		this.dog = dog;
	}
	
	private List<Dog> dogList;
	public List<Dog> getDogList() {
		return dogList;
	}
	public void setDogList(List<Dog> dogList) {
		this.dogList = dogList;
	}
	public String addDog() throws Exception{
		dogDao.addDog(dog);
		return "message";
	}
	public String showDog(){
		dogList=dogDao.QueryAllDog();
		return "show_view";
	}
	public String showDetail(){
		dog=dogDao.GetDogById(dog.getDogid());
		return "detail_view";
	}
	
	public String showEdit() throws Exception{
		dog=dogDao.GetDogById(dog.getDogid());
		return "edit_view";
	}
	public String editDog() throws Exception{
		dogDao.UpdateDog(dog);
		return "edit_message";
	}
	public String deleteDog() throws Exception{
		dogDao.deleteDog(dog.getDogid());
		return "delete_message";
	}
	private String keyWords;
	public String getKeyWords() {
		return keyWords;
	}
	public void setKeyWords(String keyWords) {
		this.keyWords = keyWords;
	}
	public String queryDogs() throws Exception{
		dogList=dogDao.QueryDogInfo(keyWords);
		return "show_view";
	}
	private Customer customer;
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	
	

}
