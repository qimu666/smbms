package com.qimu.controller;

import com.qimu.common.BaseResponse;
import com.qimu.common.ErrorCode;
import com.qimu.common.ResultUtil;
import com.qimu.constant.UserConstant;
import com.qimu.exception.BusinessException;
import com.qimu.model.pojo.Role;
import com.qimu.model.pojo.User;
import com.qimu.service.IUserService;
import com.qimu.service.RoleService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
    @ResponseBody
    public BaseResponse<User> login(@RequestBody User user, HttpServletRequest request) {
        User u = iUserService.userLogin(user.getUserCode(), user.getUserPassword(), request);
        if (u == null) {
            throw new BusinessException(ErrorCode.RESULT_ERROR, "账号密码有误！");
        }
        return ResultUtil.success(ErrorCode.SUCCESS, u);
    }

    /**
     * 用户管理页面数据及分页
     *
     * @param pageIndex 当前页码
     * @param userName  用户名1
     * @param userRole  用户角色
     * @param model     视图
     * @return 页面
     */
    @GetMapping("/search")
    public String query(@RequestParam(defaultValue = "1") Integer pageIndex, String userName, Integer userRole, Model model) {
        // todo 修改用户角色查询
        Role role = new Role();
        List<Role> allRole = roleService.getAllRole(role);
        Integer pageSize = 10;
        HashMap<String, Object> map = iUserService.findUserAndRole(userRole, userName, pageIndex, pageSize);
        model.addAttribute("roleList", allRole);
        List<User> userList = (List<User>) map.get("userList");
        System.err.println(userList);
        model.addAttribute("userList", map.get("userList"));
        model.addAttribute("totalCount", map.get("totalCount"));
        model.addAttribute("totalPageCount", map.get("pageTotal"));
        System.err.println(map.get("pageTotal"));
        model.addAttribute("currentPageNo", map.get("nowPage"));
        model.addAttribute("userRole", map.get("userRole"));
        model.addAttribute("userName", map.get("userName"));
        return "userlist";
    }

    @DeleteMapping("/delete_user/{uid}")
    @ResponseBody
    public BaseResponse<String> deleteUser(@PathVariable Integer uid) {
        if (uid != null) {
            Integer[] ids = {uid};
            if (uid <= 0) {
                throw new BusinessException(ErrorCode.REQUEST_NULL_ERROR, "用户不存在");
            }
            Integer result = iUserService.dynamicDeleteUserById(ids);
            if (result < 0) {
                throw new BusinessException(ErrorCode.OPERATE_ERROR, "删除失败");
            } else {
                throw new BusinessException(ErrorCode.SUCCESS, "删除成功");
            }
        }
        throw new BusinessException(ErrorCode.OPERATE_ERROR, "删除失败");
    }

    /**
     * 查询用户编码是否唯一
     *
     * @param userCode 用户编码
     * @return 结果
     */
    @GetMapping("/user_code")
    @ResponseBody
    public BaseResponse<String> queryUserCode(@RequestParam String userCode) {
        User user = new User();
        user.setUserCode(userCode);
        User users = iUserService.getUser(user);
        if (StringUtils.isAnyBlank(user.getUserCode())) {
            return ResultUtil.error(ErrorCode.PARAMS_ERROR, "用户编码为空");
        }
        if (users == null) {
            return ResultUtil.success(ErrorCode.SUCCESS, "可以注册该账号");
        }
        return ResultUtil.error(ErrorCode.RESULT_ERROR, "用户名已在，不可以注册");
    }

    /**
     * 获取用户角色列表
     *
     * @return 所有角色信息
     */
    @GetMapping("/user_role_list")
    @ResponseBody
    public BaseResponse<List<Role>> userRoleList() {
        List<Role> allRole = roleService.getAllRole(null);
        if (allRole.isEmpty()) {
            throw new BusinessException(ErrorCode.RESULT_ERROR, "角色不存在");
        }
        return ResultUtil.success(allRole, ErrorCode.SUCCESS);
    }

    /**
     * 查看用户
     *
     * @param id 用户id
     * @return 返回操作结果
     */
    @GetMapping("/userView/{uid}")
    @ResponseBody
    public BaseResponse<User> userView(@PathVariable("uid") Integer id) {
        User user = iUserService.getById(id);
        if (user != null) {
            return ResultUtil.success(user, ErrorCode.SUCCESS);
        }
        return ResultUtil.error(ErrorCode.REQUEST_NULL_ERROR, "用户不存在");
    }

    /**
     * 修改用户信息
     *
     * @param id    用户id
     * @param model 视图
     * @return 修改用户信息页面
     */
    @GetMapping("/update/{uid}")
    public String toModify(@PathVariable("uid") Integer id, Model model) {
        User user = new User();
        user.setId(id);
        List<User> users = iUserService.dynamicGetAllUser(user);
        Date birthday = users.get(0).getBirthday();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String format = simpleDateFormat.format(birthday);
        model.addAttribute("user", users.get(0));
        model.addAttribute("birthday", format);
        List<Role> allRole = roleService.getAllRole(null);
        model.addAttribute("role", allRole.get(0));
        return "usermodify";
    }


    /**
     * ajax操作新增用户和修改用户
     *
     * @param user 前端页面传递的数据
     * @return 操作后的执行结果
     */
    @PostMapping("/user.do")
    @ResponseBody
    public BaseResponse<String> useradd(@RequestBody User user) throws ParseException {
        if (user != null) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            String format = simpleDateFormat.format(user.getBirthday());
            Date parse = simpleDateFormat.parse(format);
            user.setBirthday(parse);
            if (user.getId() == null) {
                iUserService.dynamicAddUser(user);
                return ResultUtil.success(ErrorCode.SUCCESS, "添加成功");
            } else {
                iUserService.dynamicUpdateUserById(user);
                return ResultUtil.success(ErrorCode.SUCCESS, "修改成功");
            }
        }
        return ResultUtil.success(ErrorCode.OPERATE_ERROR, "操作失败");
    }

    /**
     * 退出登录 删除session信息
     *
     * @param request session
     * @return
     */

    // @GetMapping("/logout.do")
    // public void logOut(HttpServletRequest request) {
    //     request.getSession().removeAttribute(UserConstant.USER_LOGIN_STATUS);
    //     throw new BusinessException(ErrorCode.NOT_LOGIN);
    // }
    @GetMapping("/logout.do")
    public String logOut(HttpServletRequest request) {
        request.getSession().removeAttribute(UserConstant.USER_LOGIN_STATUS);
        return "../login";
    }

    /**
     * 获取当前用户
     *
     * @param request session
     * @return session中是否存在登录的用户信息
     */
    @PostMapping("/current")
    @ResponseBody
    public BaseResponse<User> getCurrentUser(HttpServletRequest request) {
        Object objUser = request.getSession().getAttribute(UserConstant.USER_LOGIN_STATUS);
        User currentUser = (User) objUser;
        if (currentUser == null) {
            throw new BusinessException(ErrorCode.NOT_LOGIN);
        }
        Integer userId = currentUser.getId();
        User user = iUserService.getById(userId);
        return ResultUtil.success(user, ErrorCode.SUCCESS);
    }
}