package com.dog.action;

import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.dog.dao.CommentsDao;
import com.dog.model.Barrage;
import com.dog.model.Comments;
import com.opensymphony.xwork2.ActionSupport;

@Controller @Scope("prototype")
public class CommentsAction extends ActionSupport{
	
	private static final long serialVersionUID = 1L;
	private ArrayList<Comments> clist;
	private Comments comments;
	@Resource CommentsDao commentsDao;
	
	public String queryall(){
		System.out.println("nihao");
		clist = commentsDao.query();
		for(Comments a:clist){
			System.out.println(a.getId());
		}
		return "lihao";
	}
	
	private String time;
	private String address;
	private String content;
	private String filepath;
	private String osname;
	private String replyname;
	
	public String add() throws Exception{
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setCharacterEncoding("GBK");
		comments = new Comments();
		comments.setAddress(address);
		
		System.out.println(address);
		System.out.println(content);
		System.out.println(filepath);
		System.out.println(osname);
		System.out.println(replyname);
		System.out.println(time);
		
		comments.setContent(content);
		comments.setFilepath(filepath);
		comments.setOsname(osname);
		comments.setReplyname(replyname);
		comments.setTime(time);
		
		commentsDao.add(comments);
		return null;
	}

	public CommentsDao getCommentsDao() {
		return commentsDao;
	}

	public void setCommentsDao(CommentsDao commentsDao) {
		this.commentsDao = commentsDao;
	}

	public ArrayList<Comments> getClist() {
		return clist;
	}

	public void setClist(ArrayList<Comments> clist) {
		this.clist = clist;
	}

	public Comments getComments() {
		return comments;
	}

	public void setComments(Comments comments) {
		this.comments = comments;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getFilepath() {
		return filepath;
	}

	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}

	public String getOsname() {
		return osname;
	}

	public void setOsname(String osname) {
		this.osname = osname;
	}

	public String getReplyname() {
		return replyname;
	}

	public void setReplyname(String replyname) {
		this.replyname = replyname;
	}
	

}
