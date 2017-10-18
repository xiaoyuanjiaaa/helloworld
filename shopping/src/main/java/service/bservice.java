package service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import bean.order;
import bean.users;
import dao.bdao;

@Service("bservice")
public class bservice {
	@Autowired
	public bdao dao;
	
	@Transactional
	public void add(Object obj){
		dao.add(obj);
	}
	@Transactional
	public void update(Object obj){
		dao.update(obj);
	}
	@javax.transaction.Transactional
	public void delete(Object obj){
		dao.delete(obj);
	}
	
	public List select(String hql,Object[] param){
		return dao.select(hql, param);
	}
	public Object load(Class clas,Integer id){
		return dao.load(clas, id);
	}
	
	public static void main(String[] args) {
		ApplicationContext ac=new ClassPathXmlApplicationContext("/app-core.xml");
		bservice service=(bservice)ac.getBean("bservice");
		users u=new users();
		u.setUsername("วเม๚");
		u.setPassword("123");
		u.setUserImg("");
		u.setUserRank("SSS");
//		service.add(u);
		order order=new order();
		order.setOrderNo("P123");
		order.setCou(100);
		order.setOrderprice(10f);
		order.setOrderTime(new Date());
		order.setShopid(0);
		order.setState("0");
		order.setUserid(1);
//		service.add(order);

		
		for (Object o : service.select("from order", null)) {
			System.out.println(o);
		}
	}
}
