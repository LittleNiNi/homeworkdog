package com.dog.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dog.model.Dog;

@Service @Transactional
public class DogDao {
	@Resource SessionFactory factory;
	
	public void AddDog(Dog dog) throws Exception{
		Session s=factory.getCurrentSession();
		s.save(dog);
	}
	public void DeleteDog(Integer dogid) throws Exception{
		Session s= factory.getCurrentSession();
		Object dog= s.load(Dog.class, dogid);
		s.delete(dog);
		
	}
	
    public void UpdateDog(Dog dog) throws Exception {
        Session s = factory.getCurrentSession();
        s.update(dog);
    }
    
    public ArrayList<Dog> QueryAllDog() {
        Session s = factory.getCurrentSession();
        String hql = "From Dog";
        Query q = s.createQuery(hql);
        List dogList = q.list();
        return (ArrayList<Dog>) dogList;
    }
    
    public Dog GetDogById(Integer dogid) {
        Session s = factory.getCurrentSession();
        Dog dog = (Dog)s.get(Dog.class, dogid);
        return dog;
    }
    
    public ArrayList<Dog> QueryDogInfo(String dogname) { 
    	Session s = factory.getCurrentSession();
    	String hql = "From Dog dog where 1=1";
    	if(!dogname.equals("")) hql = hql + " and dog.dogname like '%" + dogname + "%'";
    	Query q = s.createQuery(hql);
    	List dogList = q.list();
    	return (ArrayList<Dog>) dogList;
    }


}
