package com.qimu.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qimu.common.ErrorCode;
import com.qimu.constant.UserConstant;
import com.qimu.exception.BusinessException;
import com.qimu.mapper.IUserMapper;
import com.qimu.model.pojo.User;
import com.qimu.service.IUserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;

@Service
@Transactional
public class IUserServiceImpl implements IUserService {
    @Autowired
    private IUserMapper iUserMapper;


    public List<User> dynamicGetAllUser(User user) {
        return iUserMapper.dynamicGetAllUser(user);
    }

    public Integer dynamicAddUser(User user) {
        return iUserMapper.dynamicAddUser(user);
    }

    public Integer dynamicUpdateUserById(User user) {
        return iUserMapper.dynamicUpdateUserById(user);
    }

    public Integer dynamicDeleteUserById(Integer[] id) {
        return iUserMapper.dynamicDeleteUserById(id);
    }

    public HashMap<String, Object> findUserAndRole(Integer id, String userName, Integer currentPageNo, Integer pageSize) {
        PageHelper.startPage(currentPageNo, pageSize);
        List<User> users = iUserMapper.findUserAndRole(id, userName);
        PageInfo<User> info = new PageInfo<>(users);
        HashMap<String, Object> map = new HashMap<>();
        map.put("userList", info.getList());
        map.put("nowPage", info.getPageNum());
        map.put("pageTotal", info.getPages());
        map.put("totalCount", (int) info.getTotal());
        map.put("userRole", id);
        map.put("userName", userName);
        return map;
    }

    @Override
    public User userLogin(String userCode, String userPassword, HttpServletRequest request) {
        if (StringUtils.isAnyBlank(userCode, userPassword)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "请求参数有误");
        }
        if (userPassword.length() < 7) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "密码长度不能小于7位 (>_<) !!! ");
        }
        String pattern = "[0-9a-zA-Z]+";
        if (!userCode.matches(pattern)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "账号不能包含特殊字符 (>_<) !!! ");
        }
        User user = iUserMapper.isLogin(userCode, userPassword);
        if (user == null) {
            throw new BusinessException(ErrorCode.REQUEST_NULL_ERROR, "用户名或密码有误 (>_<) !!! ");
        }
        HttpSession session = request.getSession();
        session.setAttribute(UserConstant.USER_LOGIN_STATUS, user);
        session.setMaxInactiveInterval(86400);
        return user;
    }

    @Override
    public User getUser(User user) {
        return iUserMapper.getUser(user);
    }

    public List<User> findUserRole(Integer id, String userName) {
        return iUserMapper.findUserAndRole(id, userName);
    }

    @Override
    public User getById(Integer userId) {
        return iUserMapper.getById(userId);
    }

}
