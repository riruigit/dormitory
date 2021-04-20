package com.lingnan.dormitory.service.impl;

import com.lingnan.dormitory.dao.NoticeMapper;
import com.lingnan.dormitory.pojo.Dornotice;
import com.lingnan.dormitory.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NoticeServiceImpl implements NoticeService {

    @Autowired
    private NoticeMapper noticeMapper;


    @Override
    public List<Dornotice> noticeList() {
        return noticeMapper.noticeList();
    }

    @Override
    public List<Object> noteAllList() {
        return noticeMapper.noteAllList();
    }

    @Override
    public int addNotice(Dornotice dornotice) {
        return noticeMapper.addNotice(dornotice);
    }


}
