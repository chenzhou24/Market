package com.ssm.market.controller;

import com.ssm.market.entity.Supplier;
import com.ssm.market.service.SupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/supplier")
public class SupplierController {

    @Autowired
    private SupplierService supplierService;

    @RequestMapping("/list")
    public ModelAndView list()  {
        List<Supplier> suppliers = supplierService.getSupplierList();
        return new ModelAndView("supplier_list","suppliers",suppliers);

    }
}
