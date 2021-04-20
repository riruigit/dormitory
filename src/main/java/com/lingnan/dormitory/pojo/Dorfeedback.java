package com.lingnan.dormitory.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Component
public class Dorfeedback {
    private String dormitoryid;
    private String applicant;
    private String content;
    private String phone;
    private String time;
    private int id;
    private String result;
    private String studentid;
}
