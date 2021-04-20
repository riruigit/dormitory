package com.lingnan.dormitory.service.impl;

import com.lingnan.dormitory.dao.StudentMapper;
import com.lingnan.dormitory.pojo.Student;
import com.lingnan.dormitory.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


/**
 * @author 18364
 */
@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentMapper studentMapper;


    @Override
    public int login(String id) {
        return studentMapper.login(id);
    }

    @Override
    public Student selectOne(String id) {
        return studentMapper.selectOne(id);
    }


}
