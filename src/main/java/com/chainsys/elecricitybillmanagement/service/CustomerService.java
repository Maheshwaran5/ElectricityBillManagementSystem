package com.chainsys.elecricitybillmanagement.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.elecricitybillmanagement.model.Customer;
import com.chainsys.elecricitybillmanagement.repository.CustomerRepository;

@Service
public class CustomerService {
	@Autowired
	private CustomerRepository customerRepository;

	public List<Customer> getCustomer() {
		List<Customer> listCd = customerRepository.findAll();
		return listCd;
	}

	@Transactional
	public Customer save(Customer c) {
		return customerRepository.save(c);
	}

	public Customer findById(int id) {
		return customerRepository.findById(id);
	}

	@Transactional
	public void deleteById(int id) {
		customerRepository.deleteById(id);
	}
}