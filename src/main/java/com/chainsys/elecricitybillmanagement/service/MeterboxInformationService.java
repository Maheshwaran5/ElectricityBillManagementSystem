package com.chainsys.elecricitybillmanagement.service;

import java.util.List;


import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.elecricitybillmanagement.model.MeterboxInformation;
import com.chainsys.elecricitybillmanagement.repository.MaterboxInformationRepository;



@Service
public class MeterboxInformationService {
    @Autowired
    private MaterboxInformationRepository mbi;

    public List<MeterboxInformation> getMeterboxInformation() {
        List<MeterboxInformation> listMi = mbi.findAll();
        return listMi;
    }
    @Transactional
    public MeterboxInformation save(MeterboxInformation mi)
    {
        return mbi.save(mi);
    }
    public MeterboxInformation findByid(int id)
    {
        return mbi.findById(id);
    }
    @Transactional
    public void deleteById(int id)
    {
    	mbi.deleteById(id);
    }
}