package com.lingnan.dormitory.service.impl;

import com.lingnan.dormitory.dao.FeedBackMapper;
import com.lingnan.dormitory.pojo.Dorfeedback;
import com.lingnan.dormitory.service.FeedbackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 18364
 */

@Service
public class FeedbackServiceImpl implements FeedbackService {

    @Autowired
    private FeedBackMapper feedBackMapper;

    @Override
    public int addFeedBack(Dorfeedback dorfeedback) {
        return feedBackMapper.addFeedBack(dorfeedback);
    }

    @Override
    public List<Object> select() {
        return feedBackMapper.selectAll();
    }

    @Override
    public int update(Dorfeedback dorfeedback) {
        return feedBackMapper.update(dorfeedback);
    }

    @Override
    public List<Object> selectOne(String studentid) {
        return feedBackMapper.selectOne(studentid);
    }
}
