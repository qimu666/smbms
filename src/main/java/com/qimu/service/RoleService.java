package com.qimu.service;

import com.qimu.pojo.Role;

import java.util.List;

public interface RoleService {
    List<Role> getAllRole(Role role);

    Integer dynamicAddRole(Role role);

    Integer dynamicUpdateRoleById(Role role);

    Integer dynamicDeleteRoleById(Integer[] id);
}
