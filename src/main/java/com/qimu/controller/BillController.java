package com.qimu.controller;


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

    @GetMapping("/users_list")
    public String getBillList(@RequestParam(defaultValue = "1") Integer pageIndex, Integer isPayment, Integer providerId, Model model) {
        Integer pageSize = 10;
        System.err.println(providerId);
        HashMap<String, Object> map = billService.getBillsList(isPayment,providerId, pageIndex, pageSize);
        List<Bill> billList = (List<Bill>) map.get("billList");
        for (Bill bill : billList) {
            Integer provide = bill.getProviderId();
            Provider provider = providerService.getProviderById(provide);
            bill.setProviderName(provider.getProName());
        }
        model.addAttribute("billList", billList);
        model.addAttribute("totalCount", map.get("totalCount"));
        model.addAttribute("totalPageCount", map.get("pageTotal"));
        model.addAttribute("currentPageNo", map.get("nowPage"));
        model.addAttribute("isPayment", isPayment);
        model.addAttribute("providerId", providerId);
        return "billlist";
    }
}
