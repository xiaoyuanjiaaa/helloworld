package web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import bean.users;
import service.bservice;

@Controller
public class Ucontroller {
	@Resource(name="bservice")
	private bservice service;
	
	@RequestMapping(value="/u")
	@ResponseBody
	public Object list(){
		System.out.println("booklist!!");
		List value=new ArrayList<Object>();
		String hql="select u from users u where 1=1";
		return service.select(hql, value.toArray());

		
	}
	
	@RequestMapping(value="/add")
	@ResponseBody
	public String add(users u){
		service.add(u);
		return "redirect:/u.sw";
	}
	
	@RequestMapping(value="/toupdate")
	@ResponseBody
	public Object toupdate(Integer id){
		return service.load(users.class, id);
	}
	@RequestMapping(value="/update")
	@ResponseBody
	public Object update(users u){
		System.out.println("update:"+u);
		users old=(users)service.load(users.class, u.getUserId());
		old.setUsername(u.getUsername());
		old.setPassword(u.getPassword());
		old.setUserImg(u.getUserImg());
		old.setUserRank(u.getUserRank());
		
		service.update(old);
		Map<String, Object> result=new HashMap<String,Object>();
		result.put("result", "OK");
		return result;
	}
	@RequestMapping(value="/delete")
	public String delete(@RequestParam(name="id") Integer id){
		Object obj=service.load(users.class, id);
		service.delete(obj);
		return "redirect:/b.sw";
	}
	
	
}
