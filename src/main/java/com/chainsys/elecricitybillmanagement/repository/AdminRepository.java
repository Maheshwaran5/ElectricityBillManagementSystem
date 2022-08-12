package com.chainsys.elecricitybillmanagement.repository;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.elecricitybillmanagement.model.Admin;


public interface AdminRepository extends CrudRepository<Admin,Integer>{ 
	
	Admin save(Admin admin);
	Admin findByAdminId(int id);
    Admin findByAdminNameAndPassword(String adminName,String password);

}
