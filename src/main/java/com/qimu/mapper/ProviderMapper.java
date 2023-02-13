package com.qimu.mapper;

import com.qimu.model.pojo.Provider;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ProviderMapper {
    /**
     * 动态获取提供者信息
     *
     * @param provider
     * @return
     */
    List<Provider> dynamicGetAllProvider(Provider provider);

    /**
     * 动态添加提供者信息
     *
     * @param provider
     * @return
     */
    Integer dynamicAddProvider(Provider provider);

    /**
     * 通过id动态修改提供者信息
     *
     * @param provider
     * @return
     */
    Integer dynamicUpdateProviderById(Provider provider);

    /**
     * 通过id动态删除提供者信息
     *
     * @param id
     * @return
     */
    Integer dynamicDeleteProviderById(@Param("id") Integer[] id);

    /**
     * 按提供商查找账单
     *
     * @return
     */
    List<Provider> findBillByProvider();

}
