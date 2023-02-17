package com.qimu.controller;


import com.qimu.common.BaseResponse;
import com.qimu.common.ResultUtil;
import com.qimu.model.pojo.Bill;
import com.qimu.model.pojo.Provider;
import com.qimu.service.BillService;
import com.qimu.service.ProviderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;

/**
 * @author qimu
 */
@Controller
@RequestMapping("/bill")
public class BillController {
    @Autowired
    private BillService billService;
    @Autowired
    private ProviderService providerService;

    @GetMapping("/bills_list")
    public String getBillList(@RequestParam(defaultValue = "1") Integer pageIndex, String productName, Integer isPayment, Integer providerId, Model model) {
        return "billlist";
    }

    @GetMapping("/bills")
    @ResponseBody
    public BaseResponse<HashMap<String, Object>> productName(@RequestParam(defaultValue = "1") Integer pageIndex, String productName, Integer isPayment, Integer providerId) {
        Integer pageSize = 10;
        HashMap<String, Object> map = billService.getBillsList(productName, isPayment, providerId, pageIndex, pageSize);
        List<Bill> billLis = (List<Bill>) map.get("billList");
        for (Bill bill : billLis) {
            Integer provide = bill.getProviderId();
            Provider provider = providerService.getProviderById(provide);
            bill.setProviderName(provider.getProName());
        }
        List<Provider> providerList = providerService.getProviderList();
        map.put("providerList", providerList);
        return ResultUtil.success(map);
    }
}
