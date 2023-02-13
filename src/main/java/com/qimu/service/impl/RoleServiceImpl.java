package com.qimu.service.impl;

import com.qimu.mapper.RoleMapper;
import com.qimu.pojo.Role;
import com.qimu.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class RoleServiceImpl implements RoleService {
    @Autowired
    private RoleMapper roleMapper;

    @Override
    public List<Role> getAllRole(Role role) {
        return roleMapper.getAllRole(role);
    }

    @Override
    public Integer dynamicAddRole(Role role) {
        return roleMapper.dynamicAddRole(role);
    }

    public Integer dynamicUpdateRoleById(Role role) {
        return roleMapper.dynamicUpdateRoleById(role);
    }

    public Integer dynamicDeleteRoleById(Integer[] id) {
        return roleMapper.dynamicDeleteRoleById(id);
    }
}
