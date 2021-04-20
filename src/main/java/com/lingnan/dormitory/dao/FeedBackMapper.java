package com.lingnan.dormitory.dao;


import com.lingnan.dormitory.pojo.Dorfeedback;

import java.util.List;

/**
 * @author 18364
 */
public interface FeedBackMapper {

    int addFeedBack(Dorfeedback dorfeedback);

    int update(Dorfeedback dorfeedback);

    List<Object> selectAll();

    List<Object> selectOne(String studentid);
}
