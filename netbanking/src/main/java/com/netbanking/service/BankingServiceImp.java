package com.netbanking.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.netbanking.dao.BankingDao;
import com.netbanking.dao.BankingDaoImp;
import com.netbanking.model.Account;
import com.netbanking.model.Branch;
import com.netbanking.model.Customer;

@Service
@Transactional
public class BankingServiceImp implements BankingService {

	@Autowired
	private BankingDao dao;

	public void setDao(BankingDao dao) {
		this.dao = dao;
	}
	
	@Override
	public Customer accountSummary(int custID) {
		
		Customer customer1 = dao.accountSummary(custID);
		
		return customer1;
	}

	@Override
	public Customer profile(int custID) {
		// TODO Auto-generated method stub
		Customer customer1 = dao.profile(custID);
		return null;
	}

	@Override
	public List<Branch> branches(String state) {
		// TODO Auto-generated method stub
		List<Branch> branches = dao.branches();
		List<Branch> branchesInState = new ArrayList<Branch>();
		for(Branch br : branches) {
			if(br.getState().equalsIgnoreCase(state))
				branchesInState.add(br);
				
		}
		return branchesInState;
	}



	

}
