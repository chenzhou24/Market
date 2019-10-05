package com.ssm.market.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.market.dao.BillDao;
import com.ssm.market.entity.Bill;
import com.ssm.market.service.BillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BillServiceImpl implements BillService {

    @Autowired
    private BillDao billDao;

    @Override
    public PageInfo<Bill> getBillList(Bill bill, int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        return new PageInfo<>(billDao.getBillList(bill),5);
    }

    @Override
    public void addBill(Bill bill) {
        billDao.add(bill);
    }

    @Override
    public void deleteBill(Integer id) {
        billDao.deleteBill(id);
    }

}
