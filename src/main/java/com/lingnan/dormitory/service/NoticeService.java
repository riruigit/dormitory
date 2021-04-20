package com.lingnan.dormitory.service;

import com.lingnan.dormitory.pojo.Dornotice;

import java.util.List;

/**
 * @author 18364
 */

public interface NoticeService {

    List<Dornotice> noticeList();

    List<Object> noteAllList();

    int addNotice(Dornotice dornotice);
}
