package web;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import bean.order;
import bean.shop;
import bean.users;
import service.bservice;

@Controller
public class shop_unique {
	@Resource(name="bservice")
	private bservice service;
	
	@RequestMapping(value="/un_sh_list")
	public ModelAndView list(HttpSession session){
		ModelAndView mav=new ModelAndView();
		String sql="select s from shop s where 1=1 ";
		/*if (!name.equals("")&&name!=null) {
			sql+=" and s.shopName= '%"+name+"%";
		}*/
		mav.addObject("shoplist", service.select(sql, null));
		System.out.println("12312323£º"+service.select(sql, null));
		int uid=(Integer) session.getAttribute("uid");
		mav.addObject("user", service.load(users.class,uid ));
		mav.setViewName("unique/prolist");
		return mav;
	}
	@RequestMapping(value="/buyinfo")
	public ModelAndView buyinfo(@RequestParam(name="shopId") Integer id){
		ModelAndView mav=new ModelAndView();
		mav.addObject("info", service.load(shop.class, id));
		System.out.println("12312323£º"+service.load(shop.class, id));
		
	//¶©µ¥±àºÅ--Á÷Ë®ºÅ
		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddhhmmss");
		String shopno="p"+sdf.format(new Date())+id;
		System.out.println("shopno:"+shopno);
		mav.addObject("shopno", shopno);
		mav.setViewName("unique/buyinfo");
		System.out.println("147258369");
		return mav;
	}
	@RequestMapping(value="/un_sh_car",method=RequestMethod.POST)//Î´¹ºÂò--no£¬¹ºÂò--yes£¬ÊÕ»õ--ko
	@ResponseBody
	public String car(order order){
		ModelAndView mav=new ModelAndView();
		order.setOrderTime(new Date());
		order.setState("no");
		service.add(order);
		
		return "result:OK";
	}
	@RequestMapping(value="/un_sh_sell")//Î´¹ºÂò--no£¬¹ºÂò--yes£¬ÊÕ»õ--ko
	public ModelAndView sell(order order,@RequestParam(name="state") String state){
		ModelAndView mav=new ModelAndView();
		
			mav.addObject("order", service.load(order.class, order.getOrderId()));
			mav.setViewName("unique/buyinfo");
			return mav;
	}

	
}
