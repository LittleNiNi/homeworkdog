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
import com.dog.model.Customer;
import com.dog.model.Ddog;


@Controller @Scope("prototype")

public class DdogAction {
	private static final long serialVersionUID = 1L;
	/*业务对象*/
	@Resource DdogDao ddogDao;
	
	private Ddog ddog;
	private File ddogPhoto;
	private String ddogPhotoFileName;
	private String ddogPhotoContentType;
	
	public Ddog getDdog() {
		return ddog;
	}
	public void setDdog(Ddog ddog) {
		this.ddog = ddog;
	}
	
	public File getDdogPhoto() {
		return ddogPhoto;
	}
	public void setDdogPhoto(File ddogPhoto) {
		this.ddogPhoto = ddogPhoto;
	}
	
	public String getDdogPhotoFileName() {
		return ddogPhotoFileName;
	}
	public void setDdogPhotoFileName(String ddogPhotoFileName) {
		this.ddogPhotoFileName = ddogPhotoFileName;
	}
	
	public String getDdogPhotoContentType() {
		return ddogPhotoContentType;
	}
	public void setDdogPhotoContentType(String ddogPhotoContentType) {
		this.ddogPhotoContentType = ddogPhotoContentType;
	}
	
	private String keyWords;
	public String getKeyWords() {
		return keyWords;
	}
	public void setKeyWords(String keyWords) {
		this.keyWords = keyWords;
	}
	
	public void setDdogList(List<Ddog> ddogList) {
		this.ddogList = ddogList;
	}
	
	private Customer customer;
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	
	private List<Ddog> ddogList;
	public List<Ddog> getDdogList() {
		return ddogList;
	}
	
	/*显示所有狗*/
	public String showDdog(){
		ddogList=ddogDao.QueryAllDdog();
		return "show_view";
	}
	public String showDetail(){
		ddog=ddogDao.GetDdogById(ddog.getDdogid());
		return "detail_view";
	}
	
	public String showEdit() throws Exception{
		ddog=ddogDao.GetDdogById(ddog.getDdogid());
		return "edit_view";
	}
	
	
	public String addDdog() throws Exception{
		System.out.println("sss");
String path=ServletActionContext.getServletContext().getRealPath("/upload");
		
		String ddogPhotoFileName="";
		if(ddogPhoto!=null){
			InputStream is=new FileInputStream(ddogPhoto);
			String fileContentType=this.getDdogPhotoContentType();
			System.out.println(fileContentType);
			if(fileContentType.equals("image/jpeg")||fileContentType.equals("image/pjpeg"))
				ddogPhotoFileName=UUID.randomUUID().toString()+".jpg";
			else if(fileContentType.equals("image/gif"))
				ddogPhotoFileName=UUID.randomUUID().toString()+".gif";
			else if(fileContentType.equals("image/png"))
				ddogPhotoFileName=UUID.randomUUID().toString()+".png";
			
			File file=new File(path,ddogPhotoFileName);
			OutputStream os=new FileOutputStream(file);
			byte[] b=new byte[1024];
			int bs=0;
			while((bs=is.read(b))>0){
				os.write(b,0,bs);
			}
			is.close();
			os.close();
		}
		if(ddogPhoto!=null)
			ddog.setFilepath("upload/"+ddogPhotoFileName);
		else
			ddog.setFilepath("upload/NoImage.jpg");
		
		ddogDao.AddDdog(ddog);
		return "message_no";
		
	}

	public String deleteDdog() throws Exception{
		System.out.println("ss");
		ddogDao.DeleteDdog(ddog.getDdogid());
		return "delete_message";
	}
	
	public String queryDdogs() throws Exception{
		ddogList=ddogDao.QueryDdogInfo(keyWords);
		return "show_view";
	}

}
