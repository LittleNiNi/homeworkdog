package com.dog.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dog.model.Ddog;


@Service @Transactional
public class DdogDao {
@Resource SessionFactory factory;
	
	public void AddDdog(Ddog ddog) throws Exception{
		Session s=factory.getCurrentSession();
		s.save(ddog);
	}
	public void DeleteDdog(Integer ddogid) throws Exception{
		Session s= factory.getCurrentSession();
		Object Ddog= s.load(Ddog.class, ddogid);
		s.delete(Ddog);
		
	}
	
    public void UpdateDdog(Ddog ddog) throws Exception {
        Session s = factory.getCurrentSession();
        s.update(ddog);
    }
    
    public ArrayList<Ddog> QueryAllDdog() {
        Session s = factory.getCurrentSession();
        String hql = "From Ddog";
        Query q = s.createQuery(hql);
        List ddogList = q.list();
        return (ArrayList<Ddog>) ddogList;
    }
    
    public Ddog GetDdogById(Integer ddogid) {
        Session s = factory.getCurrentSession();
        Ddog ddog = (Ddog)s.get(Ddog.class, ddogid);
        return ddog;
    }
    
    public ArrayList<Ddog> QueryDdogInfo(String ddogname) { 
    	Session s = factory.getCurrentSession();
    	String hql = "From Ddog ddog where 1=1";
    	if(!ddogname.equals("")) hql = hql + " and ddog.ddogname like '%" + ddogname + "%'";
    	Query q = s.createQuery(hql);
    	List ddogList = q.list();
    	return (ArrayList<Ddog>) ddogList;
    }


}
