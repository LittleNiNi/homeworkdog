package com.dog.dao;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dog.model.Barrage;

@Service @Transactional
public class BarrageDao {
	@Resource SessionFactory factory;
	public void addDan(Barrage barrage) throws Exception{
		Session s= factory.getCurrentSession();
		System.out.println("adds"+barrage.getBtext());
		s.save(barrage);
	}
}
