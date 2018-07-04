package com.dog.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dog.model.Comments;


@Service @Transactional
public class CommentsDao {
	@Resource SessionFactory factory;
	public ArrayList<Comments> query(){
		
		Session s= factory.getCurrentSession();
		String hql = "From Comments";
		 Query q = s.createQuery(hql);
		 System.out.println("nihao");
		 List cList =  q.list();
	     return (ArrayList<Comments>) cList;
	}
	
	public void add(Comments comments){
		System.out.println("start");
		Session s = factory.getCurrentSession();
		s.save(comments);
		System.out.println("success save");
	}

}
