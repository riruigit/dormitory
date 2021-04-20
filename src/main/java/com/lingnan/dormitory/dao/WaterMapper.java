package com.lingnan.dormitory.dao;

import com.lingnan.dormitory.pojo.Dorwater;

import java.util.List;

public interface WaterMapper {
    int addWater(Dorwater dorwater);

    List<Object> seeWater();
}
