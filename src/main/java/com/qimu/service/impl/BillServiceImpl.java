package com.qimu.service.impl;

import com.qimu.mapper.BillMapper;
import com.qimu.model.pojo.Bill;
import com.qimu.service.BillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class BillServiceImpl implements BillService {
    @Autowired
    private BillMapper billMapper;

    public List<Bill> dynamicGetAllBill(Bill bill) {
        return billMapper.dynamicGetAllBill(bill);
    }

    public Integer dynamicAddBill(Bill bill) {
        return billMapper.dynamicAddBill(bill);
    }

    public Integer dynamicUpdateBillById(Bill bill) {
        return billMapper.dynamicUpdateBillById(bill);
    }

    public Integer dynamicDeleteBillById(Integer[] id) {
        return billMapper.dynamicDeleteBillById(id);
    }
}
