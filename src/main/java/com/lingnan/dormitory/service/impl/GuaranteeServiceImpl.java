package com.lingnan.dormitory.service.impl;

import com.lingnan.dormitory.dao.GuaranteeMapper;
import com.lingnan.dormitory.pojo.Dorguarantee;
import com.lingnan.dormitory.service.GuaranteeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GuaranteeServiceImpl implements GuaranteeService {

    @Autowired
    private GuaranteeMapper guaranteeMapper;
    @Override
    public int addguarantee(Dorguarantee dorguarantee) {
        return guaranteeMapper.addguarantee(dorguarantee);
    }

    @Override
    public List<Object> selectAll() {
        return guaranteeMapper.selectAll();
    }

    @Override
    public int update(Dorguarantee dorguarantee) {
        return guaranteeMapper.update(dorguarantee);
    }

    @Override
    public int select(Dorguarantee dorguarantee) {
        return guaranteeMapper.select(dorguarantee);
    }
}
