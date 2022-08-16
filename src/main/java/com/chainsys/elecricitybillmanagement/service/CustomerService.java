package com.chainsys.elecricitybillmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.elecricitybillmanagement.dto.CustomerBillDetailsDTO;
import com.chainsys.elecricitybillmanagement.model.BillDetails;
import com.chainsys.elecricitybillmanagement.model.Customer;
import com.chainsys.elecricitybillmanagement.repository.BillDetailsRepository;
import com.chainsys.elecricitybillmanagement.repository.CustomerRepository;

@Service
public class CustomerService {
	@Autowired
	private CustomerRepository customerRepository;
	
	@Autowired
	private BillDetailsRepository billDetailsRepository;

	public List<Customer> getCustomer() {
		List<Customer> listCd = customerRepository.findAll();
		return listCd;
	}
	
	public Customer save(Customer customer) {
		return customerRepository.save(customer);
	}

	public Customer findById(long id) {
		return customerRepository.findById(id);
	}

	public void deleteById(int id) {
		customerRepository.deleteById(id);
	}
	 public CustomerBillDetailsDTO getCustomerBillDetails(long id) {
	        Customer customer = findById(id);
	        CustomerBillDetailsDTO dto = new CustomerBillDetailsDTO();
	        dto.setCustomer(customer);
	        BillDetails billDetails = billDetailsRepository.findByAccountNumber(customer.getAccountNumber());
	        dto.setBilldetails(billDetails);
	        return dto;
	    }
	 public Customer getCustomerNamePassword(String name,String password) {
	        return customerRepository.findByCustomerNameAndPassword(name, password);
	    }
}