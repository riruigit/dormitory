package com.lingnan.dormitory.service.impl;

import com.lingnan.dormitory.dao.WaterMapper;
import com.lingnan.dormitory.pojo.Dorwater;
import com.lingnan.dormitory.service.WaterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WaterServiceImpl implements WaterService {

    @Autowired
    private WaterMapper waterMapper;

    @Override
    public int addWater(Dorwater dorwater) {
        return waterMapper.addWater(dorwater);
    }

    @Override
    public List<Object> seeWater() {
        return waterMapper.seeWater();
    }


}
