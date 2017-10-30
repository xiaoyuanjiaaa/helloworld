package web;


import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import bean.users;
import service.bservice;

@Controller
public class user_unique {
	@Resource(name="bservice")
	private bservice service;
	
	@RequestMapping(value="/un_user_add",method=RequestMethod.POST)
	public ModelAndView add(users u){
		ModelAndView mav=new ModelAndView();
		if (u.getPassword()!=null&&!u.getPassword().equals("")&&u.getUsername()!=null&&!u.getUsername().equals("")) {
			u.setUserImg("/shopping/back/images/img14.png");
			u.setUserRank("I");
			service.add(u);
			mav.setViewName("unique/login");
			return mav;
		}else {
			mav.setViewName("unique/reg");
			return mav;
		}
		
	}
	@RequestMapping(value="/un_user_login",method=RequestMethod.POST)
	public ModelAndView login(@RequestParam(name="username") String name,@RequestParam(name="pwd") String pwd,HttpSession session){
		ModelAndView mav=new ModelAndView();
		System.out.println("dfbkdsbfdk");
		System.out.println("username:"+name);
		String sql="select u from users u where u.username=? and u.password=?";
		List result=service.select(sql, new Object[]{name,pwd});
		System.out.println("result:"+result);
		if (!result.isEmpty()) {
			session.setAttribute("uid", ((users)(result.get(0))).getUserId());
			mav.setViewName("redirect:/un_sh_list.sw");
			return mav;
		}else {
			mav.addObject("error", result);
			mav.setViewName("unique/login");
			return mav;
		}		
		
	}
	
}
