package com.qimu.mapper;

import com.qimu.model.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IUserMapper {

    User isLogin(@Param("userCode") String userCode,@Param("userPassword")String userPassword);
    /**
     * 查询所有用户信息
     *
     * @return
     */
//    List<User> selectAll();

    /**
     * 动态获取用户信息
     *
     * @param user
     * @return
     */
    List<User> dynamicGetAllUser(User user);

    /**
     * 动态添加用户信息
     *
     * @param user
     * @return
     */
    Integer dynamicAddUser(User user);

    /**
     * 通过id动态修改用户信息
     *
     * @param user
     * @return
     */
    Integer dynamicUpdateUserById(User user);

    /**
     * 通过id动态删除用户信息
     *
     * @param id
     * @return
     */
    Integer dynamicDeleteUserById(@Param("id") Integer[] id);

    /**
     * 查找用户和角色
     *
     * @return
     */
    List<User> findUserAndRole(@Param("id") Integer id,@Param("userName") String userName);

    User getUser(User user);

    User getById(Integer userId);
}
