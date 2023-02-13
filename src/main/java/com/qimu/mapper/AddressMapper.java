package com.qimu.mapper;

import com.qimu.model.pojo.Address;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AddressMapper {
    /**
     * 动态获取地址信息
     *
     * @param address
     * @return
     */
    List<Address> dynamicGetAllAddress(Address address);

    /**
     * 动态添加地址信息
     *
     * @param address
     * @return
     */
    Integer dynamicAddAddress(Address address);

    /**
     * 通过id动态修改地址信息
     *
     * @param address
     * @return
     */
    Integer dynamicUpdateAddressById(Address address);

    /**
     * 通过id动态删除地址信息
     *
     * @param id
     * @return
     */
    Integer dynamicDeleteAddressById(@Param("id") Integer[] id);
}
