package com.qimu.service.impl;

import com.qimu.mapper.AddressMapper;
import com.qimu.pojo.Address;
import com.qimu.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class AddressServiceImpl implements AddressService {
    @Autowired
    private AddressMapper addressMapper;

    public List<Address> dynamicGetAllAddress(Address address) {
        return addressMapper.dynamicGetAllAddress(address);
    }


    public Integer dynamicAddAddress(Address address) {
        return addressMapper.dynamicAddAddress(address);
    }

    public Integer dynamicUpdateAddressById(Address address) {
        return addressMapper.dynamicUpdateAddressById(address);
    }

    public Integer dynamicDeleteAddressById(Integer[] id) {
        return addressMapper.dynamicDeleteAddressById(id);
    }
}
