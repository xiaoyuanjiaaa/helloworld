package dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.springframework.stereotype.Component;

@Component("bdao")
public class bdao extends HibernateDaoSupport{
	@Resource(name="sessionFactory")
	public void setsession(SessionFactory sessionFactory){
		super.setSessionFactory(sessionFactory);
	}
	
	public void add(Object obj){
		super.getHibernateTemplate().save(obj);
	}
	public void update(Object obj){
		super.getHibernateTemplate().update(obj);
	}
	public void delete(Object obj){
		super.getHibernateTemplate().delete(obj);
	}
	
	public List select(String hql,Object[] pram){
		return super.getHibernateTemplate().find(hql, pram);
	}
	
	public Object load(Class clas,Integer id){
		return super.getHibernateTemplate().get(clas, id);
	
	}

}
