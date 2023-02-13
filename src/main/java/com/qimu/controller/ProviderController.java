package com.qimu.controller;

import com.qimu.pojo.Provider;
import com.qimu.service.ProviderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.util.List;

@Controller
public class ProviderController {
    @Autowired
    private ProviderService providerService;

    public List<Provider> dynamicGetAllProvider(Provider provider) {
        return providerService.dynamicGetAllProvider(provider);
    }


    public Integer dynamicAddProvider(Provider provider) {
        return providerService.dynamicAddProvider(provider);
    }

    public Integer dynamicUpdateProviderById(Provider provider) {
        return providerService.dynamicUpdateProviderById(provider);
    }

    public Integer dynamicDeleteProviderById(Integer[] id) {
        return providerService.dynamicDeleteProviderById(id);
    }

    public List<Provider> findBillByProvider() {
        return providerService.findBillByProvider();
    }

}

