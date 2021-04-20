package com.lingnan.dormitory.controller;

import com.lingnan.dormitory.pojo.Dornotice;
import com.lingnan.dormitory.service.NoticeService;
import com.lingnan.dormitory.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @author 18364
 */
@Controller
public class LoginController {

    @Autowired
    private StudentService studentService;

    @Autowired
    private NoticeService noticeService;

    @RequestMapping(value = "login", produces = "application/json;charset=utf-8")
    @ResponseBody
    public String login(String id, String password, String captcha, String identity, HttpServletRequest request) {
        System.out.println("controller层login进去了");
        System.out.println("controller层获取到的参数id" + id + "密码" + password + "验证码" + captcha);
        String sessionCode = (String) request.getSession().getAttribute("captcha");
        System.out.println("session中获取到的验证码" + sessionCode);
        System.out.println("进入了login noteController方法");
        request.getSession().setAttribute("notelist", noticeService.noticeList());
        List<Dornotice> notelist = (List<Dornotice>) request.getSession().getAttribute("notelist");
        for (Dornotice deprecated : notelist) {
            System.out.println(deprecated.toString());
        }
        if (studentService.login(id) == 0) {
            return "账号不存在";
        } else {
            if (!studentService.selectOne(id).getPassword().equals(password)) {
                return "密码错误";
            } else {
                if (!sessionCode.equals(captcha)) {
                    return "验证码错误";
                } else {
                    if (!studentService.selectOne(id).getIdentity().equals(identity)) {
                        return "身份选择错误";
                    } else {
                        request.getSession().setAttribute("userInfo", studentService.selectOne(id));
                        return "登录成功";
                    }
                }
            }
        }
    }
}
