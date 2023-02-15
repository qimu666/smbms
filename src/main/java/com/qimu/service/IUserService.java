package com.qimu.service;

import com.qimu.model.pojo.User;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;

public interface IUserService {
//    List<User> selectAll();

    List<User> dynamicGetAllUser(User user);

    Integer dynamicAddUser(User user);

    Integer dynamicUpdateUserById(User user);

    Integer dynamicDeleteUserById(Integer[] id);

    HashMap<String, Object> findUserAndRole(Integer id, String userName, Integer currentPageNo, Integer pageSize);

    User userLogin(String userCode, String userPassword, HttpServletRequest request);

    User getUser(User user);
    List<User> findUserRole(Integer id, String userName);

    User getById(Integer userId);
}
