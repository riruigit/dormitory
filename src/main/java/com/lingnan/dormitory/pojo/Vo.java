package com.lingnan.dormitory.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor

@Component
public class Vo {
    private int code;
    private String msg;
    private int count;
    private List<Object> data;
}
