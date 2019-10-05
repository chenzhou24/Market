package com.ssm.market.service.impl;

import com.ssm.market.dao.SupplierDao;
import com.ssm.market.entity.Supplier;
import com.ssm.market.service.SupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class SupplierServiceImpl implements SupplierService {

    @Autowired
    private SupplierDao supplierDao;


    @Override
    public List<Supplier> getSupplierList() {
        return supplierDao.getSupplierList();
    }
}
