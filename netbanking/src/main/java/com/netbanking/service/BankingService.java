package com.netbanking.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.netbanking.model.Account;
import com.netbanking.model.Branch;
import com.netbanking.model.Customer;

public interface BankingService {
	
	

	public Customer accountSummary(int custID);

	public Customer profile(int currentCustID);

	public List<Branch> branches(String state);
}
