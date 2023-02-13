package com.qimu.mapper;

import com.qimu.model.pojo.Role;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RoleMapper {
    /**
     * 动态获取角色信息
     *
     * @param role
     * @return
     */
    List<Role> getAllRole(Role role);

    /**
     * 动态添加角色信息
     *
     * @param role
     * @return
     */
    Integer dynamicAddRole(Role role);

    /**
     * 修改角色信息
     *
     * @param role
     * @return
     */
    Integer dynamicUpdateRoleById(Role role);

    /**
     * 通过id动态删除角色信息
     *
     * @param id
     * @return
     */
    Integer dynamicDeleteRoleById(@Param("id") Integer[] id);
}
