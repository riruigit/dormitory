package com.lingnan.dormitory.dao;

import com.lingnan.dormitory.pojo.Dorguarantee;

import java.util.List;

public interface GuaranteeMapper {

    int addguarantee(Dorguarantee dorguarantee);

    List<Object> selectAll();

    int  update(Dorguarantee dorguarantee);

    int select (Dorguarantee dorguarantee);
}
