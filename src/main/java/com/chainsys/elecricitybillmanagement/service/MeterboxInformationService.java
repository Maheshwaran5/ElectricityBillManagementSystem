package com.chainsys.elecricitybillmanagement.service;

import java.util.List;


import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.elecricitybillmanagement.dto.MeterboxInformationCustomerDTO;
import com.chainsys.elecricitybillmanagement.model.Customer;
import com.chainsys.elecricitybillmanagement.model.MeterboxInformation;
import com.chainsys.elecricitybillmanagement.repository.CustomerRepository;
import com.chainsys.elecricitybillmanagement.repository.MeterboxInformationRepository;

@Service
public class MeterboxInformationService {
    @Autowired
    private MeterboxInformationRepository meterboxInformationRepository;
    
    @Autowired
    private CustomerRepository customerRepository;

    public List<MeterboxInformation> getMeterboxInformation() {
        List<MeterboxInformation> listMi = meterboxInformationRepository.findAll();
        return listMi;
    }
    public MeterboxInformation save(MeterboxInformation mi)
    {
        return meterboxInformationRepository.save(mi);
    }
    public MeterboxInformation findById(long id)
    {
        return meterboxInformationRepository.findById(id);
    }
  
    public void deleteById(long id)
    {
    	meterboxInformationRepository.deleteById(id);
    }
    @Transactional
    public MeterboxInformationCustomerDTO getmeterboxInformationCustomerDTO(long id) {
        MeterboxInformation meterboxInformation = findById(id);
        MeterboxInformationCustomerDTO dto = new MeterboxInformationCustomerDTO();
        dto.setMeterboxInfo(meterboxInformation);
        Customer customer = customerRepository.findByMeterId(id);
        dto.setCustomer(customer);
        return dto;
    }
}