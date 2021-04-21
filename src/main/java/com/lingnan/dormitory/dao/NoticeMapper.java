package com.lingnan.dormitory.dao;

import com.lingnan.dormitory.pojo.Dornotice;

import java.util.List;

/**
 * @author 18364
 */

public interface NoticeMapper {
    /**
     * 首页快捷查询公告（只是返回5 6 条信息）
     * @return list
     */
    List<Dornotice> noticeList();

    /**
     * 返回全部的
     * @return LIST
     */
    List<Object> noteAllList();


    int addNotice(Dornotice dornotice);

}
