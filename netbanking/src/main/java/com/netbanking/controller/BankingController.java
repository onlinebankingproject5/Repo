package com.netbanking.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.netbanking.model.Admin;
import com.netbanking.model.Customer;
import com.netbanking.model.UserInfo;

@Controller
public class BankingController {

	@GetMapping(value ="/" )
	public ModelAndView displayLogin() {
		
		
		
		return new ModelAndView("login", "userInfo", new UserInfo());
		
	}
	
	@PostMapping(value ="/login")
	public ModelAndView login( @ModelAttribute("UserInfo") UserInfo userinfo) {
		Session session = new Configuration().configure().buildSessionFactory().openSession();
		String ss = userinfo.getUserName();
		Query query = session.createQuery("from UserInfo u where u.userName=:name");
		query.setParameter("name", ss);
		List<UserInfo> list = query.list();
		//System.out.println(list.get(0));
		if(list.isEmpty()) {
			Query adminQuery = session.createQuery("from Admin ad where ad.userName=:name");
			adminQuery.setParameter("name", ss);
			List<Admin> list2 = adminQuery.list();
			//System.out.println(list2.get(0));
			if(list2.isEmpty()) {
				
				ModelAndView mv = new ModelAndView("login", "userInfo", new UserInfo());
				mv.addObject("msg", "Invalid username");
				return mv;
				//return new ModelAndView("login","userInfo", new UserInfo());
			}
			
			System.out.println("reg page");
			if(list2.get(0).getPassword().equals(userinfo.getPassword())) {
				ModelAndView mav = new ModelAndView("Registration", "customer", new Customer());
				mav.addObject(new UserInfo());
				return mav;
				//return new ModelAndView("Registration", "customer", new Customer());
			}
			else {
				
				ModelAndView mv = new ModelAndView("login", "userInfo", new UserInfo());
				mv.addObject("msg", "Incorrect password");
				return mv;
				//return new ModelAndView("login", "userInfo", new UserInfo());
			}
			
		}
		if(list.get(0).getPassword().equals(userinfo.getPassword())) {
			return new ModelAndView("home");
		}
		
		else {
			ModelAndView mv = new ModelAndView("login", "userInfo", new UserInfo());
			mv.addObject("msg", "Incorrect password");
			return mv;
		}

		
		
//		session.close();
//		return new ModelAndView("login", "userInfo", new UserInfo());
		
		
	}
	
	
	@PostMapping(value ="/register")
	public ModelAndView register( @ModelAttribute("customer") Customer customer) {
		System.out.println(customer.getUserInfo());
		
		Session session = new Configuration().configure().buildSessionFactory().openSession();
		session.save(customer);
		
		session.beginTransaction().commit();
		session.close();
		
		return new ModelAndView("home");
		
	}
	
	
//	@ModelAttribute("branchList")
//	public Map< String, String > getBranchList(){
//		Map< String, String > branchList = new HashMap<String, String>();
//		branchList.put("HYD", "Hyderabad");
//		branchList.put("DEL","Delhi");
//		branchList.put("KOL","Kolkata");
//		branchList.put("BNGLR","Bangalore");
//		
//		return branchList;
//	}
	
	
	
	
}
