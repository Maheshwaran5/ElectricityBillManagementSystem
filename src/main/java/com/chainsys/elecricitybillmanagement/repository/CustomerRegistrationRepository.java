package com.chainsys.elecricitybillmanagement.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.elecricitybillmanagement.model.Customer;
import com.chainsys.elecricitybillmanagement.model.CustomerRegistration;


public interface CustomerRegistrationRepository extends CrudRepository<CustomerRegistration,Integer>{ 
	
	List<CustomerRegistration> findAll();

}
