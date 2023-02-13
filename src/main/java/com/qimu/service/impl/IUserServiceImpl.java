package com.qimu.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qimu.mapper.IUserMapper;
import com.qimu.pojo.User;
import com.qimu.service.IUserService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;

@Service
@Transactional
public class IUserServiceImpl implements IUserService {
    @Autowired
    private IUserMapper iUserMapper;

//    @Override
//    public List<User> selectAll() {
//        return iUserMapper.selectAll();
//    }

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
        map.put("queryUserRole", id);
        map.put("queryname", userName);
        return map;
    }

    @Override
    public User isLogin(String userCode, String userPassword) {
        return iUserMapper.isLogin(userCode, userPassword);
    }

    @Override
    public User getUser(User user) {
        return iUserMapper.getUser(user);
    }

    public List<User> findUserRole(Integer id, String userName) {
        return iUserMapper.findUserAndRole(id, userName);
    }

}
