package com.lingnan.dormitory.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Component
public class Dorguarantee {
    private String studentid;
    private String time;
    private String dormitoryid;
    private String content;
    private int id;
    private String result;
}
