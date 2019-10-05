package com.ssm.market.dao;

import com.ssm.market.entity.Bill;

import java.util.List;

public interface BillDao {

    List<Bill> getBillList(Bill bill);

    void add(Bill bill);

    void deleteBill(Integer id);
}
