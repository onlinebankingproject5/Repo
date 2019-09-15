package com.netbanking.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.netbanking.model.Account;
import com.netbanking.model.Branch;
import com.netbanking.model.Customer;
import com.netbanking.service.BankingService;

@Repository
public class BankingDaoImp implements BankingDao {

	Session session = new Configuration().configure().buildSessionFactory().openSession();
	
	@Override
	public Customer accountSummary(int custID) {


		Customer customer1 = (Customer)session.get(Customer.class, custID);
		
		
		return customer1;
	}

	@Override
	public Customer profile(int custID) {
		// TODO Auto-generated method stub
		
		return null;
	}

	@Override
	public List<Branch> branches() {
		
		Query createQuery = session.createQuery("from Branch");
		
		List<Branch> list = createQuery.list();
		
		
		
		return list;
	}

	
}
