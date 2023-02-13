package com.qimu.controller;

import com.qimu.pojo.Role;
import com.qimu.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.util.List;

@Controller
public class RoleController {
    @Autowired
    private RoleService roleService;

    public List<Role> getAllRole(Role role){
        return roleService.getAllRole(role);
    }

    public Integer dynamicAddRole(Role role){
        return roleService.dynamicAddRole(role);
    }

    public Integer dynamicUpdateRoleById(Role role) {
        return roleService.dynamicUpdateRoleById(role);
    }
    public Integer dynamicDeleteRoleById(Integer[] id){
       return roleService.dynamicDeleteRoleById(id);
    }
}
