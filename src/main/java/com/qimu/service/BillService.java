package com.qimu.service;


import com.qimu.model.pojo.Bill;

import java.util.List;

public interface BillService {
    List<Bill> dynamicGetAllBill(Bill bill);

    Integer dynamicAddBill(Bill bill);

    Integer dynamicUpdateBillById(Bill bill);

    Integer dynamicDeleteBillById(Integer[] id);
}
