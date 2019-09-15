package com.netbanking.dao;

import java.util.List;

//import org.springframework.stereotype.Component;
//import org.springframework.stereotype.Repository;

import com.netbanking.model.Account;
import com.netbanking.model.Branch;
import com.netbanking.model.Customer;

public interface BankingDao {

	
	public Customer accountSummary(int custID);

	public Customer profile(int custID);
	
	public List<Branch> branches();
	
}
