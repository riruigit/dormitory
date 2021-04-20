package com.lingnan.dormitory.service;

import com.lingnan.dormitory.pojo.Dorguarantee;

import java.util.List;

public interface GuaranteeService {
    int addguarantee(Dorguarantee dorguarantee);


    List<Object> selectAll();

    int  update(Dorguarantee dorguarantee);

    int select (Dorguarantee dorguarantee);
}
