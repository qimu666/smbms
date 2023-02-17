package com.qimu.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qimu.mapper.BillMapper;
import com.qimu.model.pojo.Bill;
import com.qimu.service.BillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
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

    public Bill getBillById(Integer id) {
        return billMapper.getBillById(id);
    }

    @Override
    public HashMap<String, Object> getBillsList(String productName, Integer isPayment, Integer providerId, Integer pageIndex, Integer pageSize) {
        PageHelper.startPage(pageIndex, pageSize);
        // List<Bill> bills = billMapper.getBillList();
        List<Bill> bills = billMapper.getBillsByProviderId(productName, isPayment, providerId);
        PageInfo<Bill> info = new PageInfo<>(bills);
        HashMap<String, Object> map = new HashMap<>();
        map.put("billList", info.getList());
        map.put("nowPage", info.getPageNum());
        map.put("totalPageCount", info.getPages());
        map.put("totalCount", (int) info.getTotal());
        map.put("isPayment", isPayment);
        map.put("providerId", providerId);
        map.put("productName", productName);
        return map;
    }

    @Override
    public List<Bill> getBillsList() {
        return billMapper.getBillList();
    }

    @Override
    public List<Bill> getBillsByProviderId(String productName,Integer isPayment, Integer providerId) {
        return billMapper.getBillsByProviderId(productName,isPayment, providerId);
    }
}
