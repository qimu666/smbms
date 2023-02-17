package com.qimu.service;


import com.qimu.model.pojo.Bill;

import java.util.HashMap;
import java.util.List;

public interface BillService {
    List<Bill> dynamicGetAllBill(Bill bill);

    Integer dynamicAddBill(Bill bill);

    Integer dynamicUpdateBillById(Bill bill);

    Integer dynamicDeleteBillById(Integer[] id);

    Bill getBillById(Integer id);

    HashMap<String, Object> getBillsList(String productName,Integer isPayment,Integer providerId, Integer pageIndex, Integer pageSize);

    List<Bill> getBillsList();

    List<Bill> getBillsByProviderId(String productName,Integer isPayment,Integer providerId);

}
