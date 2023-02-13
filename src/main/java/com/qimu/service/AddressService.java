package com.qimu.service;

import com.qimu.pojo.Address;

import java.util.List;

public interface AddressService {
    Integer dynamicDeleteAddressById(Integer[] id);

    Integer dynamicUpdateAddressById(Address address);

    Integer dynamicAddAddress(Address address);

    List<Address> dynamicGetAllAddress(Address address);
}
