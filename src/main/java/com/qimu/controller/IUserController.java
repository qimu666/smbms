package com.qimu.controller;

import com.qimu.common.BaseResponse;
import com.qimu.common.ResultUtil;
import com.qimu.constant.UserConstant;
import com.qimu.model.pojo.Role;
import com.qimu.model.pojo.User;
import com.qimu.service.IUserService;
import com.qimu.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/user")
public class IUserController {
    @Autowired
    private IUserService iUserService;
    @Autowired
    private RoleService roleService;

    /**
     * 登录
     *
     * @param user    接收参数
     * @param request
     * @return
     */
    @PostMapping("/login.do")
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
    @GetMapping("/users.do")
    public String query(@RequestParam(defaultValue = "1") Integer pageIndex, String queryname, Integer queryUserRole, Model model) {
        // todo 修改用户角色查询
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

    @DeleteMapping("/delete_user/{uid}")
    @ResponseBody
    public BaseResponse<String> deleteUser(@PathVariable Integer uid) {
        if (uid != null) {
            Integer[] ids = {uid};
            if (uid <= 0) {
                // todo 异常返回类
                return ResultUtil.error(-2, "用户不存在");
            }
            Integer result = iUserService.dynamicDeleteUserById(ids);
            if (result < 0) {
                return ResultUtil.error(-1, "删除失败");
            } else {
                return ResultUtil.success(1);
            }
        }
        return ResultUtil.error(-1, "删除失败");
    }

    @GetMapping("/user_code")
    @ResponseBody
    public BaseResponse<String> query(@RequestParam String userCode) {
        User user = new User();
        user.setUserCode(userCode);
        User users = iUserService.getUser(user);
        if (users == null) {
            return ResultUtil.success(1, "可以注册");
        }
        return ResultUtil.error(-1, "用户名存在，不可以注册");
    }

    @GetMapping("/user_role_list")
    @ResponseBody
    public BaseResponse<List<Role>> userRoleList() {
        List<Role> allRole = roleService.getAllRole(null);
        // ajax查寻roleName
        if (!allRole.isEmpty()) {
            return ResultUtil.success(1, allRole, "", "");
        }
        return ResultUtil.error(-1, "角色不存在");
    }

    /**
     * 查看用户
     *
     * @param id
     * @param model
     * @return
     */
    @GetMapping("/userView/{uid}")
    public String userView(@PathVariable("uid") Integer id, Model model) {
        User user = new User();
        user.setId(id);
        List<User> users = iUserService.findUserRole(user.getId(), null);
        if (!users.isEmpty()) {
            model.addAttribute("user", users.get(0));
        }
        return "userview";
    }

    /**
     * 修改用户信息
     *
     * @param id    用户id
     * @param model
     * @return
     */
    @GetMapping("/update/{uid}")
    public String toModify(@PathVariable("uid") Integer id, Model model) {
        User user = new User();
        user.setId(id);
        List<User> users = iUserService.dynamicGetAllUser(user);
        System.err.println(users);
        model.addAttribute("user", users.get(0));
        List<Role> allRole = roleService.getAllRole(null);
        model.addAttribute("role", allRole.get(0));
        return "usermodify";
    }

    /**
     * 添加用户界面
     *
     * @return
     */
    @GetMapping("/useradd")
    public String add() {
        return "useradd";
    }

    /**
     * ajax操作新增用户和修改用户
     *
     * @param
     * @return
     */
    @PostMapping("/user.do")
    public String useradd(User user) {
        if (user != null) {
            if (user.getId() == null) {
                iUserService.dynamicAddUser(user);
            } else {
                iUserService.dynamicUpdateUserById(user);
            }
            return "redirect:/user/users.do";
        }
        return "redirect:/user/users.do";
    }

    @GetMapping("/logout.do")
    public String logOut(HttpServletRequest request) {
        request.getSession().removeAttribute(UserConstant.USER_LOGIN_STATUS);
        return "../login";
    }
}