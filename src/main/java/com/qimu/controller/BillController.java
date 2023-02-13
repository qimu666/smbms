package com.qimu.controller;

import com.qimu.model.pojo.Bill;
import com.qimu.service.BillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.util.List;

@Controller
public class BillController {
    @Autowired
    private BillService billService;

    public List<Bill> dynamicGetAllBill(Bill bill) {
        return billService.dynamicGetAllBill(bill);
    }

    public Integer dynamicAddBill(Bill bill) {
        return billService.dynamicAddBill(bill);
    }

    public Integer dynamicUpdateBillById(Bill bill) {
        return billService.dynamicUpdateBillById(bill);
    }

    public Integer dynamicDeleteBillById(Integer[] id) {
        return billService.dynamicDeleteBillById(id);
    }
}
