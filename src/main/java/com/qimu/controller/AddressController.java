package com.qimu.controller;

import com.qimu.pojo.Address;
import com.qimu.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.util.List;

@Controller
public class AddressController {
    @Autowired
    private AddressService addressService;

    public List<Address> dynamicGetAllAddress(Address address) {
        return addressService.dynamicGetAllAddress(address);
    }

    public Integer dynamicAddAddress(Address address) {
        return addressService.dynamicAddAddress(address);
    }

    public Integer dynamicUpdateAddressById(Address address) {
        return addressService.dynamicUpdateAddressById(address);
    }

    public Integer dynamicDeleteAddressById(Integer[] id) {
        return addressService.dynamicDeleteAddressById(id);
    }
}
