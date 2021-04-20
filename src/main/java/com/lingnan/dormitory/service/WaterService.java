package com.lingnan.dormitory.service;

import com.lingnan.dormitory.pojo.Dorwater;

import java.util.List;

public interface WaterService {
    int addWater(Dorwater dorwater);

    List<Object> seeWater();
}
