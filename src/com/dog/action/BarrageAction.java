package com.dog.action;

import java.net.URLDecoder;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.dog.dao.BarrageDao;
import com.dog.model.Barrage;
import com.opensymphony.xwork2.ActionSupport;
@Controller @Scope("prototype")
public class BarrageAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private Barrage barrage;
	private String bar;
	@Resource BarrageDao barrageDao;
	public String add() throws Exception{
		HttpServletRequest request = ServletActionContext.getRequest();
		barrage = new Barrage();
		String x = URLDecoder.decode(bar,"gbk");
		System.out.println(x+"ss");
		barrage.setBtext(bar);
		barrageDao.addDan(barrage);
		return null;
	}
	
	public Barrage getBarrage() {
		return barrage;
	}
	
	public void setBarrage(Barrage barrage) {
		this.barrage = barrage;
	}

	public String getBar() {
		return bar;
	}

	public void setBar(String bar) {
		this.bar = bar;
	}

}
