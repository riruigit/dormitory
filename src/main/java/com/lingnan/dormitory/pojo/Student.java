package com.lingnan.dormitory.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;

/**
 * @author 18364
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@Component
public class Student {
    private String id;
    private String name;
    private String password;
    private String identity;
    private String courtyard;
    private String dormitoryid;
    private String department;
    private String classroom;
    private String gender;
    private String phone;
}
