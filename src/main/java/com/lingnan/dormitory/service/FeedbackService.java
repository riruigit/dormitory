package com.lingnan.dormitory.service;

import com.lingnan.dormitory.pojo.Dorfeedback;

import java.util.List;

/**
 * @author 18364
 */
public interface FeedbackService {

    int addFeedBack(Dorfeedback dorfeedback);

    List<Object> select();

    int update(Dorfeedback dorfeedback);

    List<Object> selectOne(String studentid);
}
