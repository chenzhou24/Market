package com.ssm.market.service;

import com.github.pagehelper.PageInfo;
import com.ssm.market.entity.Bill;

public interface BillService {

    PageInfo<Bill> getBillList(Bill bill, int pageNum, int pageSize);

    void addBill(Bill bill);

    void deleteBill(Integer id);
}
