package com.qimu.controller;

import com.alibaba.fastjson.JSONArray;
import com.qimu.common.UserConstant;
import com.qimu.pojo.Role;
import com.qimu.pojo.User;
import com.qimu.service.IUserService;
import com.qimu.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class IUserController {
    @Autowired
    private IUserService iUserService;
    @Autowired
    private RoleService roleService;

    // 登录
    @RequestMapping(value = "/login.do", method = RequestMethod.POST)
    public String login(User user, HttpServletRequest request) {
        User u = iUserService.isLogin(user.getUserCode(), user.getUserPassword());
        System.out.println(u);
        if (u == null) {
            request.getSession().setAttribute("error", "账号密码有误！");
            return "../login";
        }
        request.getSession().setAttribute(UserConstant.USER_LOGIN_STATUS, u);
        return "redirect:/user/users.do";
    }

    // 用户管理页面数据及分页
    @RequestMapping(value = "/users.do", method = RequestMethod.GET)
    public String query(@RequestParam(defaultValue = "1") Integer pageIndex, String queryname, Integer queryUserRole, Model model) {
        Role role = new Role();
        List<Role> allRole = roleService.getAllRole(role);
        role.setId(queryUserRole);
        Integer pageSize = 8;
        HashMap<String, Object> map = iUserService.findUserAndRole(role.getId(), queryname, pageIndex, pageSize);
        model.addAttribute("roleList", allRole);
        List<User> userList = (List<User>) map.get("userList");
        System.err.println(userList);
        model.addAttribute("userList", map.get("userList"));
        model.addAttribute("totalCount", map.get("totalCount"));
        model.addAttribute("totalPageCount", map.get("pageTotal"));
        System.err.println(map.get("pageTotal"));
        model.addAttribute("currentPageNo", map.get("nowPage"));
        model.addAttribute("queryUserRole", map.get("queryUserRole"));
        model.addAttribute("queryname", map.get("queryname"));
        return "userlist";
    }

    @GetMapping("/user.do")
    @ResponseBody
    public String query(@RequestParam Map<String, Object> map) {
        List<Role> allRole = null;
        String s = null;
        System.err.println(map);
        User user = new User();
        // ajax查寻roleName
        if (map.get("method").equals("getrolelist") && map.get("method") != null) {
            allRole = roleService.getAllRole(null);
            if (!allRole.isEmpty()) {
                s = JSONArray.toJSONString(allRole);
                System.err.println(s);
                return s;
            }
        }
        // ajax查询用户
        if (map.get("method").equals("ucexist") && map.get("method") != null) {
            user.setUserCode((String) map.get("userCode"));
            User users = iUserService.getUser(user);
            if (users == null) {
                user.setUserCode("notexist");
                s = JSONArray.toJSONString(user);
                return s;
            }
            user.setUserCode("exist");
            s = JSONArray.toJSONString(user);
            System.out.println(s);
            return s;
        }
        // ajax 删除用户
        if (map.get("method").equals("deluser") && map.get("method") != null) {
            String uid = (String) map.get("uid");
            Integer id = 0;
            HashMap<String, String> d = new HashMap<>();
            if (uid != null) {
                id = Integer.valueOf(uid);
                Integer[] ids = {id};
                if (id <= 0) {
                    d.put("delResult", "notexist");
                } else if (iUserService.dynamicDeleteUserById(ids) > 0) {
                    d.put("delResult", "true");
                } else {
                    d.put("delResult", "false");
                }
                s = JSONArray.toJSONString(d);
                return s;
            }
        }
        return null;
    }

    /**
     * 查看用户
     *
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/userView.do")
    public String userView(@RequestParam("method") String method, @RequestParam("uid") Integer id, Model model) {
        if (method.equals("view") && method != null) {
            User user = new User();
            user.setId(id);
            List<User> users = iUserService.findUserRole(user.getId(), null);
            if (!users.isEmpty()) {
                model.addAttribute("user", users.get(0));
            }
        }
        return "userview";
    }

    // 修改页面
    @RequestMapping("/tomodify.do")
    public String toModify(@RequestParam("method") String method, @RequestParam("uid") Integer id, Model model) {
        if (method.equals("modify") && method != null) {
            User user = new User();
            user.setId(id);
            List<User> users = iUserService.dynamicGetAllUser(user);
            model.addAttribute("user", users.get(0));
        }
        if (method.equals("getrolelist") && method != null) {
            List<Role> allRole = roleService.getAllRole(null);
            model.addAttribute("role", allRole.get(0));
        }
        return "usermodify";
    }

    /**
     * 添加用户界面
     *
     * @return
     */
    @RequestMapping("/useradd")
    public String add() {
        return "useradd";
    }

    /**
     * ajax操作新增用户和修改用户
     *
     * @param
     * @return
     */
    @RequestMapping(value = "/user.do", method = RequestMethod.POST)
    public String useradd(@RequestParam("method") String method, User user) {
        System.out.println(method);
        if (method.equals("add")) {
            if (user != null && user.getId() == null) {
                iUserService.dynamicAddUser(user);
            }
            return "redirect:/user/users.do";
        }
        if (method.equals("modifyexe")) {
            if (user != null) {
                iUserService.dynamicUpdateUserById(user);
            }
            return "redirect:/user/users.do";
        }
        return null;
    }

    @GetMapping("/logout.do")
    public String logOut(HttpServletRequest request) {
        request.getSession().removeAttribute(UserConstant.USER_LOGIN_STATUS);
        return "../login";
    }
}