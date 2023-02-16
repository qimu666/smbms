package com.qimu.controller.viewscontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


/**
 * @author: QiMu
 * @Date: 2023年02月14日 20:48
 * @Version:1.0
 * @Description: 用户视图跳转
 */
@Controller
public class UserViewsController {
    @GetMapping("/error")
    public String userList() {
        return "../error";
    }

    /**
     * 添加用户界面
     *
     * @return 跳转到添加用户页面
     */
    @GetMapping("/useradd")
    public String add() {
        return "useradd";
    }

    @GetMapping("/login")
    public String logOut() {
        return "../login";
    }

    @GetMapping("/userView")
    public String userView() {
        return "userview";
    }

    @GetMapping("/update")
    public String update() {
        return "usermodify";
    }

    @GetMapping("/home")
    public String frame() {
        return "frame";
    }
}
