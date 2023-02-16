package com.qimu.mapper;

import com.qimu.model.pojo.Bill;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BillMapper {
    /**
     * 动态获取广告信息
     *
     * @param bill
     * @return
     */
    List<Bill> dynamicGetAllBill(Bill bill);

    /**
     * 动态添加广告信息
     *
     * @param bill
     * @return
     */
    Integer dynamicAddBill(Bill bill);

    /**
     * 通过id动态修改广告信息
     *
     * @param bill
     * @return
     */
    Integer dynamicUpdateBillById(Bill bill);

    /**
     * 通过id动态删除广告信息
     *
     * @param id
     * @return
     */
    Integer dynamicDeleteBillById(@Param("id") Integer[] id);

    Bill getBillById(@Param("id") Integer id);

    List<Bill> getBillList();

    List<Bill> getBillsByProviderId(@Param("isPayment") Integer isPayment,@Param("providerId") Integer providerId);
}
