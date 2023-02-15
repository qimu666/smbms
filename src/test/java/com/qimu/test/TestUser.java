/*
package com.qimu.test;

import com.qimu.controller.IUserController;
import com.qimu.model.pojo.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;


@RunWith(SpringJUnit4ClassRunner.class)
//设置Spring.测试环境的配置文件
@ContextConfiguration(locations = {"classpath:springmvc-config.xml", "classpath:spring-config.xml"})
public class TestUser {
    @Autowired
    private IUserController iUserController;

    */
/**
 * 查询所有用户信息
 * <p>
 * 动态获取用户
 * <p>
 * 动态添加用户
 * <p>
 * 按Id动态更新用户
 * <p>
 * 按Id动态删除用户
 * <p>
 * 查找用户和角色
 *//*

    @Test
    public void selectAll() {
//        List<User> users = iUserController.selectAll();
//        users.forEach(System.out::println);
    }

    */
/**
 * 动态获取用户
 *//*

    @Test
    public void dynamicGetUser() {
        User user = new User();
        user.setUserCode("admin");
        user.setUserName("系统管理员");
        List<User> users = iUserController.dynamicGetAllUser(user);
        users.forEach(System.out::println);
    }

    */
/**
 * 动态添加用户
 *//*

    @Test
    public void dynamicAddUser() {
        User user = new User();
        user.setUserCode("柒木");
        user.setUserName("系统管理员");
        Integer integer = iUserController.dynamicAddUser(user);
        System.out.println(integer > 0 ? "添加成功" : "添加失败");
        System.out.println("当前用户id为" + user.getId());
    }

    */
/**
 * 按Id动态更新用户
 *//*

    @Test
    public void dynamicUpdateUserById() {
        User user = new User();
        user.setUserCode("qimu");
        user.setId(16);
        Integer integer = iUserController.dynamicUpdateUserById(user);
        System.out.println(integer > 0 ? "修改成功" : "修改失败");
    }

    */
/**
 * 按Id动态删除用户
 *//*

    @Test
    public void dynamicDeleteUserById() {
        Integer[] integers = new Integer[]{15, 16};
        Integer integer = iUserController.dynamicDeleteUserById(integers);
        System.out.println(integer > 0 ? "删除成功" : "删除失败");
    }

    */
/**
 * 查找用户和角色
 *//*

    @Test
    public void findUserAndRole() {
//        List<User> userAndRole = iUserController.findUserAndRole();
//        userAndRole.forEach(System.out::println);
    }
}
*/
