package com.netbanking.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.netbanking.model.Admin;
import com.netbanking.model.Branch;
import com.netbanking.model.Customer;
import com.netbanking.model.UserInfo;
import com.netbanking.service.BankingService;


@Controller
public class BankingController {
	
	
	public static int currentCustID;
	@Autowired
	private BankingService service;
	
	
	
	public void setService(BankingService service) {
		this.service = service;
	}
	

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
		
		if(list.isEmpty()) {
			Query adminQuery = session.createQuery("from Admin ad where ad.userName=:name");
			adminQuery.setParameter("name", ss);
			List<Admin> list2 = adminQuery.list();
			
			if(list2.isEmpty()) {
				
				ModelAndView mv = new ModelAndView("login", "userInfo", new UserInfo());
				mv.addObject("msg", "Invalid username");
				return mv;
				
			}
			
			System.out.println("reg page");
			if(list2.get(0).getPassword().equals(userinfo.getPassword())) {
				ModelAndView mav = new ModelAndView("Registration", "customer", new Customer());
				mav.addObject(new UserInfo());
				return mav;
				
			}
			else {
				
				ModelAndView mv = new ModelAndView("login", "userInfo", new UserInfo());
				mv.addObject("msg", "Incorrect password");
				return mv;

			}
			
		}
		if(list.get(0).getPassword().equals(userinfo.getPassword())) {
			ModelAndView mav = new ModelAndView("Home");
			Query custQuery = session.createQuery("select c.custID from Customer c where c.userInfo.userName=:userName");
			custQuery.setParameter("userName", ss);
			List custList = custQuery.list();
			System.out.println("=hh=");
			System.out.println(custList);
			currentCustID= (int) custList.get(0);

			String str = new String();
			str= userinfo.getUserName();
			System.out.println(str);
			mav.addObject("userinfo", userinfo);
			return mav;
		}
		
		else {
			ModelAndView mv = new ModelAndView("login", "userInfo", new UserInfo());
			mv.addObject("msg", "Incorrect password");
			return mv;
		}

		
		
		
	}
	
	
	@PostMapping(value ="/register")
	public ModelAndView register( @ModelAttribute("customer") Customer customer) {
		System.out.println(customer.getUserInfo());
		
		Session session = new Configuration().configure().buildSessionFactory().openSession();
		
		String br = customer.getAccount().getBranch().getBranch();
		System.out.println(br);
		Query createQuery = session.createQuery("from Branch b where b.branch=:branch");
		createQuery.setParameter("branch", br);
		System.out.println(createQuery.list().get(0));
		Branch branchObj = (Branch)createQuery.list().get(0);
		customer.getAccount().setBranch(branchObj);
		session.save(customer);
		currentCustID= customer.getCustID();
		session.beginTransaction().commit();
		session.close();
		
		return new ModelAndView("Home", "customer", new Customer() );
		
	}
	
	
	@ModelAttribute("branchList")
	public Map< String, String > getBranchList(){
		Map< String, String > branchList = new HashMap<String, String>();
		branchList.put("Balanagar", "Balanagar");
		branchList.put("Gandhi Nagar","Gandhi Nagar");
		branchList.put("Burra Bazar","Burra Bazar");
		branchList.put("Hebbal","Hebbal");
		
		return branchList;
	}
	
	@ModelAttribute("stateList")
	public Map< String, String > getStateList(){
		Map< String, String > stateList = new HashMap<String, String>();
		stateList.put("West Bengal", "West Bengal");
		stateList.put("Delhi","Delhi");
		stateList.put("Karnakata","Karnakata");
		stateList.put("Telangana","Telangana");
		
		return stateList;
	}
	
	@GetMapping("/accountSummary")
	public ModelAndView accountSummary(@ModelAttribute("Userinfo") UserInfo userinfo) {

		Customer customer1 = service.accountSummary(currentCustID);
		String fullName = customer1.getFirstName()+customer1.getLastName();
		System.out.println(fullName);
		
		ModelAndView modelAndView = new ModelAndView("AccountSummary");
		modelAndView.addObject("customer1", customer1);
		modelAndView.addObject("fullName", fullName);
		return modelAndView;
		
	}
	
	@GetMapping("/balance")
	public ModelAndView balance() {

		Customer customer1 = service.accountSummary(currentCustID);
		System.out.println(currentCustID);
		String fullName = customer1.getFirstName()+customer1.getLastName();
		
		ModelAndView modelAndView = new ModelAndView("Balance");
		modelAndView.addObject("customer1", customer1);
		modelAndView.addObject("fullName", fullName);
		return modelAndView;
		
	}

	@GetMapping("/profile")
	public ModelAndView profile() {
		Customer customer1 = service.accountSummary(currentCustID);
		String fullName = customer1.getFirstName()+customer1.getLastName();
		ModelAndView modelAndView = new ModelAndView("Profile");
		modelAndView.addObject("customer1", customer1);
		modelAndView.addObject("fullName", fullName);
		System.out.println(customer1);
		return modelAndView;
		
	}
	
	@GetMapping("/branchRequest")
	public ModelAndView branchRequest() {
		return new ModelAndView("Branches", "branch", new Branch());
	}
	
	
	@GetMapping("/branches")
	public ModelAndView branches(@ModelAttribute("branch") Branch branch) {
		System.out.println(branch.getState());
		List<Branch> branches = service.branches(branch.getState());
		ModelAndView modelAndView = new ModelAndView("Branches");
		System.out.println(branches);
		modelAndView.addObject("branches", branches);
		modelAndView.addObject("msg", "Branches");
		return modelAndView;
		
	}
	
	
}
