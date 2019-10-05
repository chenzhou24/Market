package com.ssm.market.controller;

import com.github.pagehelper.PageInfo;
import com.ssm.market.entity.Bill;
import com.ssm.market.entity.Supplier;
import com.ssm.market.service.BillService;
import com.ssm.market.service.SupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/bill")
public class BillController {
    @Autowired
    private BillService billService;
    @Autowired
    private SupplierService supplierService;

    @RequestMapping("/list")
    public String list(Bill bill, Integer pageNum, Model model) throws  Exception{
        if (pageNum == null || pageNum < 1) {
            pageNum = 1;
        }
        PageInfo<Bill> pageInfo = billService.getBillList(bill, pageNum, 3);
        List<Supplier> supplierList = supplierService.getSupplierList();
        model.addAttribute("pageInfo", pageInfo);
        model.addAttribute("supplierList", supplierList);
        return "bill_list";
    }


    @RequestMapping("/goAdd")//跳转到添加页面，并携带供应商信息
    public ModelAndView goAdd(){
        return new ModelAndView("add","supplierList",supplierService.getSupplierList());
    }


    @RequestMapping("/add")//完成真正的添加操作
    public String addBill(Bill bill){
        billService.addBill(bill);
        return "redirect:list";
    }

    @RequestMapping("/delete")
    public String deleteBill(Integer id){
        billService.deleteBill(id);
        return "redirect:list";
    }
}
