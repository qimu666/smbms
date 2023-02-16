package com.qimu.service.impl;

import com.qimu.mapper.ProviderMapper;
import com.qimu.model.pojo.Provider;
import com.qimu.service.ProviderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ProviderServiceImpl implements ProviderService {
    @Autowired
    private ProviderMapper providerMapper;

    public List<Provider> dynamicGetAllProvider(Provider provider) {
        return providerMapper.dynamicGetAllProvider(provider);
    }

    public Integer dynamicAddProvider(Provider provider) {
        return providerMapper.dynamicAddProvider(provider);
    }

    public Integer dynamicUpdateProviderById(Provider provider) {
        return providerMapper.dynamicUpdateProviderById(provider);
    }

    public Integer dynamicDeleteProviderById(Integer[] id) {
        return providerMapper.dynamicDeleteProviderById(id);
    }

    public List<Provider> findBillByProvider() {
        return providerMapper.findBillByProvider();
    }

    public Provider getProviderById(Integer id) {
        return providerMapper.getProviderById(id);
    }

    @Override
    public List<Provider> getProviderList() {
        return providerMapper.getProviderList();
    }

}
