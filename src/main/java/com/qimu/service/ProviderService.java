package com.qimu.service;

import com.qimu.model.pojo.Provider;

import java.util.List;

public interface ProviderService {
    List<Provider> dynamicGetAllProvider(Provider provider);

    Integer dynamicAddProvider(Provider provider);

    Integer dynamicUpdateProviderById(Provider provider);

    Integer dynamicDeleteProviderById(Integer[] id);

    List<Provider> findBillByProvider();

    Provider getProviderById(Integer id);
    List<Provider> getProviderList();
}
