package com.lingnan.dormitory.service;

import com.lingnan.dormitory.pojo.Student;


/**
 * @author 18364
 */

public interface StudentService {
    /**
     * service
     * @param id
     * @return stu
     */
    int login(String id);

    /**
     *
     * @param id
     * @return
     */
    Student selectOne(String id);
}
