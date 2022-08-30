package com.chainsys.elecricitybillmanagement.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.elecricitybillmanagement.model.Customer;
import com.chainsys.elecricitybillmanagement.model.CustomerRegistration;


public interface CustomerRegistrationRepository extends CrudRepository<CustomerRegistration,Integer>{ 
	
//	CustomerRegistration save(CustomerRegistration CustomerRegistration);
//	CustomerRegistration findByCustomerRegistrationId(int id);
	List<CustomerRegistration> findAll();
//    CustomerRegistration findByCustomerRegistrationNameAndPassword(String CustomerRegistrationName,String password);

}
