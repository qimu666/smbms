package com.qimu.controller.viewscontroller;

import com.qimu.common.BaseResponse;
import com.qimu.common.ErrorCode;
import com.qimu.common.ResultUtil;
import com.qimu.exception.BusinessException;
import com.qimu.model.pojo.Provider;
import com.qimu.service.ProviderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;


/**
 * @author: QiMu
 * @Date: 2023年02月14日 20:48
 * @Version:1.0
 * @Description: 订单视图页面跳转
 */
@Controller
public class BillViewsController {

    @GetMapping("/bill")
    public String billlist() {
        return "billlist";
    }

    /**
     * 获取供应商
     *
     * @return 所有供应商信息
     */

    @Autowired
    private ProviderService providerService;
    @GetMapping("/api/providers_list")
    @ResponseBody
    public BaseResponse<List<Provider>> providerList() {
        List<Provider> providerList = providerService.getProviderList();
        if (providerList.isEmpty()) {
            throw new BusinessException(ErrorCode.RESULT_ERROR, "供应商");
        }
        return ResultUtil.success(providerList, ErrorCode.SUCCESS);
    }
}
