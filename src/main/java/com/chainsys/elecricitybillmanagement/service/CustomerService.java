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
	private CustomerRepository repo;

	public List<Customer> getCustomer() {
		List<Customer> listCd = repo.findAll();
		return listCd;
	}

	@Transactional
	public Customer save(Customer cd) {
		return repo.save(cd);
	}

	public Customer findByid(int id) {
		return repo.findById(id);
	}

	@Transactional
	public void deleteById(int id) {
		repo.deleteById(id);
	}
}