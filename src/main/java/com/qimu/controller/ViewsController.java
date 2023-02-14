package com.qimu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author: QiMu
 * @Date: 2023年02月14日 20:48
 * @Version:1.0
 * @Description:
 */
@Controller
@RequestMapping("/page")
public class ViewsController {
    @GetMapping("/list")
    public String userList() {
        return "userlist";
    }
}
