package com.chainsys.elecricitybillmanagement.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.elecricitybillmanagement.model.Admin;
import com.chainsys.elecricitybillmanagement.repository.AdminRepository;
@Service
public class AdminService {
	@Autowired
	private AdminRepository adminRepository;
	
	public Admin save(Admin admin) {
		return adminRepository.save(admin);
	}

	public Admin findById(int id) {
		return adminRepository.findByAdminId(id);
	}
	 public Admin getAdminNamePassword(String adminName,String password) {
	        return adminRepository.findByAdminNameAndPassword(adminName, password);
	    }
}