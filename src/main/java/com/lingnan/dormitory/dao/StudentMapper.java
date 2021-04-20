package com.lingnan.dormitory.dao;

import com.lingnan.dormitory.pojo.Student;
import org.apache.ibatis.annotations.Param;

/**
 * @author 18364
 */

public interface StudentMapper {

    /**
     * 登录,根据学号和密码来验证登录。
     * 登录需要判断三个方面，一个是验证码，一个是账号，一个是密码
     * 验证码从session中获取，判断账号存在不存在（login 返回整数） 判断密码（返回的类中获取密码比较）
     * @param id

     * @return count
     */
     int login(@Param("id") String id);

    /**
     * 查询一个学生
     * @param id

     * @return stu
     */
     Student selectOne(@Param("id") String id);





}
