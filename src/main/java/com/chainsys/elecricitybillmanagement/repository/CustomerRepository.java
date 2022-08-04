package com.chainsys.elecricitybillmanagement.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.elecricitybillmanagement.model.Customer;

public interface CustomerRepository extends CrudRepository<Customer,Integer>{
	Customer findById(int id);
	Customer save(Customer c);
    void deleteById(int id);
    List <Customer> findAll();
    Customer findByMeterId(int id);
}
