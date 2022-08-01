package com.chainsys.elecricitybillmanagement.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.elecricitybillmanagement.model.Customer;
import com.chainsys.elecricitybillmanagement.model.MeterboxInformation;

public interface CustomerRepository extends CrudRepository<Customer,Integer>{
	Customer findById(int id);
	Customer save(Customer c);
    void deleteById(int id);
    List <Customer> findAll();
}
