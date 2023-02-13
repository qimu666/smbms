# XML方式ssm整合，完成基本业务

## 1. 功能

|   **功能**    |                             实现                             |
| :-----------: | :----------------------------------------------------------: |
| **添加用户**  | 控制层获取用户在页面输入的信息，调用service层接口，service层获取数据交互层的数据，进行用户的添加 |
| **修改用户**  | 与添加用户共用一个页面，用隐藏输入框获取用户id,通过id区分执行的操作是添加还是修改，并实现数据的回填 |
| **模糊查询**y |             使用动态sql，减少代码，实现模糊查询              |
| **批量删除**  | 接收删除请求,执行删除操作,根据多选框可以实现批量删除的功能，因为是数组类型使用单独删除也是正常的 |
|   **分页**    |                            未完成                            |

```java
@Controller
@RequestMapping("/user")
public class IUserController {
    @Autowired
    private IUserService iUserService;

    @RequestMapping("/index")
    public String login() {
        return "login";
    }

    /**
     * 显示用户,因为用的动态sql所以支持模糊查询
     * @param model
     * @param user
     * @return
     */
    @RequestMapping(value = "/userList")
    public String getAll(Model model,User user) {
        List<User> users = iUserService.dynamicGetAllUser(user);
        model.addAttribute("list", users);
        return "user_list";
    }

    /**
     * 修改用户
     * 获取此时的用户id,根据id查询用户信息,进行数据的回填
     * @param user
     * @param model
     * @return
     */
    @RequestMapping("/update")
    public String update(User user, Model model) {
        User u = new User();
        u.setId(user.getId());
        List<User> users = iUserService.dynamicGetAllUser(u);
        if (!users.isEmpty()) {
            model.addAttribute("user", users.get(0));
        }
        return "doUpdateAndSave";
    }

    /**
     * 添加用户
     * @return
     */
    @RequestMapping("/add")
    public String add() {
        return "doUpdateAndSave";
    }

    /**
     * 执行修改或添加用户信息
     * @param user
     * @return
     */
    @RequestMapping(value = "doUpdateAndSave")
    public String doUpdateAndSave(User user) {
         /*
           user.getId() 是隐藏输入框的值,用户看不到,这个是表单执行添加或修改的关键.
           添加功能是添加用户按钮a标签链接跳转过来的,并没有获取表单数据,在链接拼接上可以明显的看到,
           所以此时的表单的各个组件value为空,user.getId()也必然为null,user.getId()为空时执行添加操作.
           ->>>>>>>
           修改功能也是a标签链接跳转过来的,但是拼接了Id信息,当user.getId()不为空时执行修改操作.
         */
        if (user != null && user.getId() != null) {
            iUserService.dynamicUpdateUserById(user);
        } else {
            iUserService.dynamicAddUser(user);
        }
        return "redirect:/user/userList";
    }

    /**
     * 删除用户
     * @param id
     * @return
     */
    @RequestMapping("/delete")
    public String delete(Integer[] id) {
        if (id != null && id.length > 0) {
            iUserService.dynamicDeleteUserById(id);
        }
        return "redirect:/user/userList";
    }
}
```



## 1. 添加依赖

```xml
    <dependencies>
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-context</artifactId>
            <version>5.3.1</version>
        </dependency>
        <!-- springmvc依赖 : 比Spring核心IOC 多一个 springweb -->
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-webmvc</artifactId>
            <version>5.3.1</version>
        </dependency>
        
        <!-- jackson : POJO <-> JSON -->
        <dependency>
            <groupId>com.fasterxml.jackson.core</groupId>
            <artifactId>jackson-databind</artifactId>
            <version>2.12.1</version>
        </dependency>

        <!-- 事务支持 : 提供实现事务切面类 -->
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-jdbc</artifactId>
            <version>5.3.1</version>
        </dependency>

        <!-- mybatis 和 spring 的整合包 : 其提供了一个SqlSessionFactoryBean，用于创建SqlSession -->
        <dependency>
            <groupId>org.mybatis</groupId>
            <artifactId>mybatis-spring</artifactId>
            <version>2.0.6</version>
        </dependency>

        <!-- 单元测试 + spring-test -->
        <!-- https://mvnrepository.com/artifact/junit/junit -->
        <dependency>
            <groupId>junit</groupId>
            <artifactId>junit</artifactId>
            <version>4.12</version>
            <scope>test</scope>
        </dependency>

        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-test</artifactId>
            <version>5.3.1</version>
            <scope>test</scope>
        </dependency>

        <!-- 连接池 -->
        <dependency>
            <groupId>com.alibaba</groupId>
            <artifactId>druid</artifactId>
            <version>1.0.9</version>
        </dependency>

        <!-- AOP支持 -->
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-aspects</artifactId>
            <version>5.3.1</version>
        </dependency>

        <!--mybatis支持-->
        <dependency>
            <groupId>org.mybatis</groupId>
            <artifactId>mybatis</artifactId>
            <version>3.5.7</version>
        </dependency>

        <!-- https://mvnrepository.com/artifact/mysql/mysql-connector-java -->
        <!-- https://mvnrepository.com/artifact/mysql/mysql-connector-java -->
        <dependency>
            <groupId>mysql</groupId>
            <artifactId>mysql-connector-java</artifactId>
            <version>8.0.28</version>
        </dependency>

        <!-- Spring jdbc 和 spring-tx 事务 -->
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-orm</artifactId>
            <version>5.3.1</version>
        </dependency>

        <!-- https://mvnrepository.com/artifact/log4j/log4j -->
        <dependency>
            <groupId>log4j</groupId>
            <artifactId>log4j</artifactId>
            <version>1.2.17</version>
        </dependency>

        <!-- servlet API -->
        <dependency>
            <groupId>javax.servlet</groupId>
            <artifactId>javax.servlet-api</artifactId>
            <version>3.1.0</version>
            <scope>provided</scope>
        </dependency>
        
        <!-- mybatis 分页插件 -->
        <dependency>
            <groupId>com.github.pagehelper</groupId>
            <artifactId>pagehelper</artifactId>
            <version>5.2.0</version>
        </dependency>
        
        <dependency>
            <groupId>javax.servlet</groupId>
            <artifactId>jstl</artifactId>
            <version>1.2</version>
        </dependency>
    </dependencies>
```

## 2. 配置文件

### 2.1 配置 Web.xml

```
  1. 核心控制器 DispatcherServlet
  2. ContextLoaderListener 
  3. 编码过滤器（放过滤器中最前）
  4. 请发方法处理器 HiddenMethodFilter
```

````xml
```XML
<?xml version="1.0" encoding="UTF-8"?>
<web-app xmlns="http://xmlns.jcp.org/xml/ns/javaee"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://xmlns.jcp.org/xml/ns/javaee http://xmlns.jcp.org/xml/ns/javaee/web-app_4_0.xsd"
         version="4.0">

    <!-- 配置Spring的编码过滤器 -->
    <filter>
        <filter-name>characterEncodingFilter</filter-name>
        <filter-class>org.springframework.web.filter.CharacterEncodingFilter</filter-class>
        <init-param>
            <param-name>encoding</param-name>
            <param-value>UTF-8</param-value>
        </init-param>
        <init-param>
            <param-name>forceEncoding</param-name>
            <param-value>true</param-value>
        </init-param>
    </filter>
    <filter-mapping>
        <filter-name>characterEncodingFilter</filter-name>
        <url-pattern>/*</url-pattern>
    </filter-mapping>

    <!-- 请求方式的过滤器 -->
    <filter>
        <filter-name>hiddenHttpMethodFilter</filter-name>
        <filter-class>org.springframework.web.filter.HiddenHttpMethodFilter</filter-class>
    </filter>
    <filter-mapping>
        <filter-name>hiddenHttpMethodFilter</filter-name>
        <url-pattern>/*</url-pattern>
    </filter-mapping>

    <!-- 前端控制器 -->
    <servlet>
        <servlet-name>dispatcherServlet</servlet-name>
        <servlet-class>org.springframework.web.servlet.DispatcherServlet</servlet-class>

        <!-- 指定springmvc配置文件位置 -->
        <init-param>
            <param-name>contextConfigLocation</param-name>
            <param-value>classpath:springmvc-config.xml</param-value>
        </init-param>

        <load-on-startup>1</load-on-startup>
    </servlet>
    <servlet-mapping>
        <servlet-name>dispatcherServlet</servlet-name>
        <url-pattern>/</url-pattern>
    </servlet-mapping>

    <!-- 配置Spring监听器：服务器启动的时候加载Spring的配置文件 -->
    <listener>
        <listener-class>org.springframework.web.context.ContextLoaderListener</listener-class>
    </listener>

    <!-- 配置Spring的配置文件的位置 -->
    <context-param>
        <param-name>contextConfigLocation</param-name>
        <param-value>classpath:spring-config.xml</param-value>
    </context-param>
    
</web-app>
```
````

### 2.2  配置SprignMVC-config

>1. Controller包的扫描 
>2. 静态资源处理 
>3.  视图控制器
>4. 注解驱动

```xml
<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
       xmlns:context="http://www.springframework.org/schema/context"
       xmlns:mvc="http://www.springframework.org/schema/mvc"
       xsi:schemaLocation="http://www.springframework.org/schema/beans http://www.springframework.org/schema/beans/spring-beans.xsd http://www.springframework.org/schema/context https://www.springframework.org/schema/context/spring-context.xsd http://www.springframework.org/schema/mvc https://www.springframework.org/schema/mvc/spring-mvc.xsd">
    <!--扫描包-->
    <context:component-scan base-package="com.qimu.controller"></context:component-scan>
    <!--视图解析器-->
    <bean
            class="org.springframework.web.servlet.view.InternalResourceViewResolver">
        <property name="prefix" value="/WEB-INF/jsp/"/><!-- 配置jsp路径的前缀 -->
        <property name="suffix" value=".jsp"/><!-- 配置jsp路径的后缀 -->
    </bean>
    <!--开启注解驱动-->
    <mvc:annotation-driven/>
    <!--处理静态资源-->
    <mvc:default-servlet-handler/>
    <!--处理静态资源-->
    <!--    <mvc:resources mapping="/resources/**" location="/**"/>-->
    <!--配置视图控制器-->
    <!--    <mvc:view-controller path="/" view-name=""></mvc:view-controller>-->
</beans>
```

### 2.3 Spring整合Mybatis和MVC的配置文件

>**配置分为三大部分：**
>
> **一： 1. 包扫描、排除@Controller** 
>
>**二：事务相关** 
>
>1. **事务管理器** 
>2.  **事务注解驱动**
>
>**三：MyBaits需要的配置：** 
>
>1. **引入 jdbc.properties** 
>2.  **druid 数据源** 
>3.  **SqlSessionFactoryBean 注册到IOC**
>4.  **产生的mapper代理类注册到IOC  ----> (配置 MapperScannerConfigurer)**

```properties
jdbc.driver=com.mysql.cj.jdbc.Driver
jdbc.url=jdbc:mysql://localhost:3306/smbms
jdbc.username=root
jdbc.password=1234
```

```xml
<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
       xmlns:context="http://www.springframework.org/schema/context"
       xmlns:tx="http://www.springframework.org/schema/tx"
       xsi:schemaLocation="http://www.springframework.org/schema/beans http://www.springframework.org/schema/beans/spring-beans.xsd http://www.springframework.org/schema/context https://www.springframework.org/schema/context/spring-context.xsd http://www.springframework.org/schema/tx http://www.springframework.org/schema/tx/spring-tx.xsd">
    <!--扫描包(排除控制层)-->
    <context:component-scan base-package="com.qimu">
        <context:exclude-filter type="annotation" expression="org.springframework.stereotype.Controller"/>
    </context:component-scan>
    <!--读取配置文件-->
    <context:property-placeholder location="classpath:jdbc.properties"></context:property-placeholder>
    <!--数据库信息-->
    <bean id="dataSource" class="com.alibaba.druid.pool.DruidDataSource">
        <property name="driverClassName" value="${jdbc.driver}"/>
        <property name="username" value="${jdbc.username}"/>
        <property name="password" value="${jdbc.password}"/>
        <property name="url" value="${jdbc.url}"/>
    </bean>
    <!--注册事务管理器 是个切面类-->
    <bean id="transactionManager" class="org.springframework.jdbc.datasource.DataSourceTransactionManager">
        <!-- 注入数据源-->
        <property name="dataSource" ref="dataSource"/>
    </bean>
    <!--开启事务的注解驱动 默认值transactionManager-->
    <tx:annotation-driven transaction-manager="transactionManager"></tx:annotation-driven>
    <!--配置SqlSessionFactoryBean-->
    <bean id="sessionFactory" class="org.mybatis.spring.SqlSessionFactoryBean">
        <!-- mybatis核心配置文件路径-->
        <property name="configLocation" value="classpath:mybatis-config.xml"></property>
       <!-- 数据源设置成 druid 的 -->
        <property name="dataSource" ref="dataSource"></property>
    </bean>
     <!-- 将要的 Mapper 接口的代理类注入到Spring的IOC容器, 如果多个mapper 目录，使用,号分隔 -->
    <bean class="org.mybatis.spring.mapper.MapperScannerConfigurer">
        <property name="basePackage" value="com.qimu.mapper"></property>
        <!-- <property name="sqlSessionFactoryBeanName" value="sessionFactory"/>-->
    </bean>
</beans>
```

### 2.4 Mabatis配置

````xml
```XML
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE configuration
        PUBLIC "-//mybatis.org//DTD Config 3.0//EN"
        "http://mybatis.org/dtd/mybatis-3-config.dtd">

<configuration>

    <settings>
        <!-- 驼峰 -->
        <setting name="mapUnderscoreToCamelCase" value="true"/>

        <!-- 开启二级缓存 -->
        <setting name="lazyLoadingEnabled" value="true"/>
        <setting name="aggressiveLazyLoading" value="false"/>
        
        
        <!-- 开启日志输出 ：根据 2.7, 2.8 自行选择想要的日志 -->
<!--        <setting name="logImpl" value="STDOUT_LOGGING"/>-->  <!-- JUL 输出 -->
<!--        <setting name="logImpl" value="LOG4J"/>-->  <!-- log4j 输出 -->
        <setting name="logImpl" value="SLF4J"/>
    </settings>
    
    <typeAliases>
        <package name="com.atguigu.ssm.pojo"/>
    </typeAliases>
    
    <plugins>
        <!-- 设置分页插件 -->
        <plugin interceptor="com.github.pagehelper.PageInterceptor"></plugin>
    </plugins>
</configuration>
```
````

## 3. 日志文件

### 3.1 log4j日志文件(druid/mybatis)

>在 resources/ 下编写 log4j.xml

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE log4j:configuration SYSTEM "log4j.dtd">

<log4j:configuration xmlns:log4j="http://jakarta.apache.org/log4j/">

    <appender name="STDOUT" class="org.apache.log4j.ConsoleAppender">
        <param name="Encoding" value="UTF-8"/>
        <layout class="org.apache.log4j.PatternLayout">
            <param name="ConversionPattern" value="[log4j-output]%-5d %d{MM-dd HH:mm:ss,SSS} %m (%F:%L) \n"/>
        </layout>
    </appender>

    <logger name="java.sql">
        <level value="debug"/>
    </logger>
    <logger name="org.apache.ibatis" >
        <level value="info"/>
    </logger>

    <!-- 默认配置，级别为debug 且根据name为log.console和 log.file两个appender输出-->
    <root>
        <level value="debug"/>
        <appender-ref ref="STDOUT"/>
    </root>
</log4j:configuration>
```

### 3.2 lockback 日志(Spring/mybatis)

>在 main/resources/ 下编写 logback.xml（固定名字）
>
> 在 test/resources/ 下编写 logback-test.xml（固定名字，单元测试会用）

````xml
```XML
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE configuration>
<configuration debug="true">
    <!-- 指定日志的输出位置 -->
    <appender name="stdout" class="ch.qos.logback.core.ConsoleAppender">
        <encoder>
            <!-- 日志的输出格式 -->
            <!-- 按照顺序分别是: 时间、日志级别、线程名称、打印日志的类、日志的主体内容、换行 -->
            <pattern>[%d{HH:mm:ss.SSS}] [%-5level] [%thread] [%logger] [%msg]%n</pattern>
        </encoder>
    </appender>

    <!-- 根据特殊需求指定局部的日志级别 : SQL 语句是 info 级别 -->
    <logger name="com.atguigu.crowd.mapper">
        <level value="DEBUG"/>
    </logger>

    <!-- 设置全局的日志级别。日志级别分别是 : DEBUG、INFO、WARN、ERROR -->
    <!-- 指定任何一个日志级别都只打印当前级别和后面级别的日志 -->
    <root level="error">
        <!-- 指定打印日志的appender，这里通过 STDOUT 引用了前面配置的 appender -->
        <appender-ref ref="stdout"/>
    </root>
</configuration>
```
````

