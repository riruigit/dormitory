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
public class Dornotice {
    private String time;
    private String theme;
    private String content;
    private String author;
    private int id;
}
