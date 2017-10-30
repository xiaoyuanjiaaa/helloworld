package web;

import javax.annotation.Resource;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import bean.shop;
import bean.sort;
import service.bservice;

@Controller
public class Scontorller {
	@Resource(name="bservice")
	private bservice service;
	
	@RequestMapping(value="/list")
	public ModelAndView list(){
		ModelAndView mav=new ModelAndView();
		mav.addObject("shoplist", service.select("from shop", null));
		System.out.println("12312323："+service.select("from shop", null));
		
	//	mav.addObject("sort", service.select("from sort",null));
		mav.setViewName("back/shoplist");
		return mav;
	}
	
	@RequestMapping(value="/shoplist")
	public ModelAndView shop(){
		ModelAndView mav=new ModelAndView();
		mav.addObject("shoplist", service.select("from shop", null));
		
		mav.addObject("sortid", service.select("from sort",null));
		mav.setViewName("back/shop");
		return mav;
	}
	@RequestMapping(value="/add")
	public ModelAndView add(shop p){
		ModelAndView mav=new ModelAndView();
		service.add(p);
		mav.setViewName("redirect:/list.sw");
		return mav;
	}
	
	@RequestMapping(value="/toupdate",method=RequestMethod.GET)
	public ModelAndView  toupdate(@RequestParam(name="id") Integer id){
		   ModelAndView mv = new ModelAndView();
		   mv.addObject("shop", service.load(shop.class, id));
		   mv.addObject("sortid", service.select("from sort",null));
		   mv.setViewName("back/upshop");
		   return mv;
	   }
	@RequestMapping(value="/update",method=RequestMethod.POST)
	   public ModelAndView  update(shop shop){
		   ModelAndView mav = new ModelAndView();
		   System.out.println("update..shop"+service.load(shop.class, shop.getShopId()));
		   shop olds = (shop)service.load(shop.class, shop.getShopId());
		   olds.setCollection(shop.getCollection());
		   olds.setNum(shop.getNum());
		   olds.setPrice(shop.getPrice());
		   olds.setQuality(shop.getQuality());
		   olds.setShopImg(shop.getShopImg());
		   System.out.println("图片信息："+shop.getShopImg());
		   olds.setShopName(shop.getShopName());
		   olds.setSole(shop.getSole());
		   olds.setVender(shop.getVender());
		   olds.setCPU(shop.getCPU());
		   olds.setMBRAM(shop.getMBRAM());
		   olds.setOs(shop.getOs());
		   olds.setResolution(shop.getResolution());
		   olds.setROM(shop.getROM());
		   olds.setMweight(shop.getMweight());
		   olds.setSortid(shop.getSortid());
		   sort oldsort=(sort)service.load(sort.class, shop.getSortid());
		   olds.setSort(oldsort);
		   /*System.out.println("..sort.."+shop.getSort().getSortName());
		   System.out.println("update..sort.."+service.load(sort.class, shop.getSortid()));
		   
		   
		   olds.getSort().setSortName(shop.getSort().getSortName());
		   olds.getSort().setParentId(shop.getSort().getParentId());*/
		   
		   service.update(olds);
		   mav.setViewName("redirect:/list.sw");
		   return mav;
	   }
	
	   @RequestMapping(value="/delete")
	   public ModelAndView  delete(@RequestParam(name="id") Integer id){
		   ModelAndView mv = new ModelAndView();
		   shop obj=(shop)service.load(shop.class, id);
		   obj.setShopName(obj.getShopName()+"  已下架！");
		   service.update(obj);
		   mv.setViewName("redirect:/list.sw");
		   return mv;
	   }
	//商品类别
	@RequestMapping(value="/sortadd")
	public ModelAndView add(sort s){
		ModelAndView mav=new ModelAndView();
		service.add(s);
		mav.setViewName("redirect:/list.sw");
		return mav;
	}
	
	   @RequestMapping(value="/sortlist")
	   public ModelAndView  sort(){
		   ModelAndView mav = new ModelAndView();
		   
		   mav.addObject("sort", service.select("from sort",null));
		   System.out.println("sort,bean"+service.select("from sort",null));
		   mav.setViewName("back/sort");
		   return mav;
	   }
	   
	   /*public static void main(String[] args) {
		   ApplicationContext ctx = new ClassPathXmlApplicationContext("/app-core.xml");
		   bservice  service =(bservice)ctx.getBean("bservice");
		   for (Object o : service.select("from sort", null)) {
			System.out.println(o);
		}
	}*/
}
