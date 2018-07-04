package com.dog.action;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.dog.dao.DdogDao;
import com.dog.dao.DogDao;
import com.dog.model.*;
import com.opensymphony.xwork2.ActionSupport;

@Controller @Scope("prototype")

public class DogAction extends ActionSupport{
	
	private static final long serialVersionUID = 1L;
	/*业务对象*/
	@Resource DogDao dogDao;
	@Resource DdogDao ddogDao;
	
	private Dog dog;
	private File dogPhoto;
	private String dogPhotoFileName;
	private String dogPhotoContentType;
	
	public Dog getDog() {
		return dog;
	}
	public void setDog(Dog dog) {
		this.dog = dog;
	}
	
	public File getDogPhoto() {
		return dogPhoto;
	}
	public void setDogPhoto(File dogPhoto) {
		this.dogPhoto = dogPhoto;
	}
	
	public String getDogPhotoFileName() {
		return dogPhotoFileName;
	}
	public void setDogPhotoFileName(String dogPhotoFileName) {
		this.dogPhotoFileName = dogPhotoFileName;
	}
	
	public String getDogPhotoContentType() {
		return dogPhotoContentType;
	}
	public void setDogPhotoContentType(String dogPhotoContentType) {
		this.dogPhotoContentType = dogPhotoContentType;
	}
	
	private String keyWords;
	public String getKeyWords() {
		return keyWords;
	}
	public void setKeyWords(String keyWords) {
		this.keyWords = keyWords;
	}
	
	public void setDogList(List<Dog> dogList) {
		this.dogList = dogList;
	}
	
	private Customer customer;
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	
	private List<Dog> dogList;
	public List<Dog> getDogList() {
		return dogList;
	}
	
	/*显示所有狗*/
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
	
	public String addDog() throws Exception{
		System.out.println("ssss");
String path=ServletActionContext.getServletContext().getRealPath("/upload");
		
		String dogPhotoFileName="";
		if(dogPhoto!=null){
			InputStream is=new FileInputStream(dogPhoto);
			String fileContentType=this.getDogPhotoContentType();
			System.out.println(fileContentType);
			if(fileContentType.equals("image/jpeg")||fileContentType.equals("image/pjpeg"))
				dogPhotoFileName=UUID.randomUUID().toString()+".jpg";
			else if(fileContentType.equals("image/gif"))
				dogPhotoFileName=UUID.randomUUID().toString()+".gif";
			else if(fileContentType.equals("image/png"))
				dogPhotoFileName=UUID.randomUUID().toString()+".png";
			
			File file=new File(path,dogPhotoFileName);
			OutputStream os=new FileOutputStream(file);
			byte[] b=new byte[1024];
			int bs=0;
			while((bs=is.read(b))>0){
				os.write(b,0,bs);
			}
			is.close();
			os.close();
		}
		if(dogPhoto!=null)
			dog.setFilepath("upload/"+dogPhotoFileName);
		else
			dog.setFilepath("upload/NoImage.jpg");
		int s = dog.getDogid();
		dogDao.AddDog(dog);
		ddogDao.DeleteDdog(s);
		return "message";
		
	}

	public String deleteDog() throws Exception{
	    
		dogDao.DeleteDog(dog.getDogid());
		return "delete_message";
	}
	
	public String queryDogs() throws Exception{
		dogList=dogDao.QueryDogInfo(keyWords);
		return "show_view";
	}
	
}	
	
	


