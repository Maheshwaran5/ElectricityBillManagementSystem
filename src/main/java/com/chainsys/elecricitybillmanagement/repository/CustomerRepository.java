package com.chainsys.elecricitybillmanagement.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.elecricitybillmanagement.model.Customer;

public interface CustomerRepository extends CrudRepository<Customer,Long>{
	Customer findById(long id);
	Customer save(Customer customer);
    void deleteById(long id);
    List <Customer> findAll();
    Customer findByMeterId(long id);
    Customer findByCustomerNameAndPassword(String customerName,String password);
    
}
