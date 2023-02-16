package com.qimu.controller.viewscontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


/**
 * @author: QiMu
 * @Date: 2023年02月14日 20:48
 * @Version:1.0
 * @Description: 订单视图页面跳转
 */
@Controller
public class ProviderViewsController {
    @GetMapping("/provider")
    public String provider() {
        return "providerlist";
    }
}
