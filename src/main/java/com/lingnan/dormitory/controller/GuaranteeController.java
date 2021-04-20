package com.lingnan.dormitory.controller;

import com.alibaba.fastjson.JSONObject;
import com.lingnan.dormitory.pojo.Dorguarantee;
import com.lingnan.dormitory.pojo.Student;
import com.lingnan.dormitory.pojo.Vo;
import com.lingnan.dormitory.service.GuaranteeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
public class GuaranteeController {
    @Autowired
    private GuaranteeService guaranteeService;

    @Autowired
    private Vo vo;

    @RequestMapping(value = "addguarantee", produces = "application/json;charset=utf-8")
    @ResponseBody
    public String addguarantee(Dorguarantee dorguarantee,HttpServletRequest request) {
        System.out.println("提交保修的时候获取的参数" + dorguarantee.toString());
        Student userInfo = (Student) request.getSession().getAttribute("userInfo");
        dorguarantee.setStudentid(userInfo.getId());
        int addguarantee = guaranteeService.addguarantee(dorguarantee);
        System.out.println(addguarantee);
        return "已发送保修请求";
    }

    @RequestMapping(value = "allguarantee")
    public void selectGuarantee(HttpServletResponse response) throws IOException {
        System.out.println("进入了allGuarantee");
        List<Object> guarantee = guaranteeService.selectAll();
        System.out.println(guarantee.toString());
        response.setContentType("text/html;charset=utf-8");
        vo.setCode(0);
        vo.setMsg("success");
        vo.setCount(guarantee.size());
        vo.setData(guarantee);
        response.getWriter().write(JSONObject.toJSON(vo).toString());
    }

    @RequestMapping(value = "update", produces = "application/json;charset=utf-8")
    @ResponseBody
    public String update(Dorguarantee dorguarantee,HttpServletRequest request) {
        System.out.println(dorguarantee.toString());
        System.out.println("进入guarantee");
        Student userInfo = (Student) request.getSession().getAttribute("userInfo");
        dorguarantee.setStudentid(userInfo.getId());
        guaranteeService.update(dorguarantee);
        System.out.println(guaranteeService.update(dorguarantee));
        return "已更新保修进度";
    }


    //学生提交保修的controller,先判断是不是学生，如果不是学生，那就进不去。如果可以，那就进入页面，然后通过ajax请求

    @RequestMapping("studentAddGuarantee")
    public String studentGuarantee(HttpServletRequest request) {
        System.out.println("进到了学生保修的页面的controller");
        Student userInfo = (Student) request.getSession().getAttribute("userInfo");
        System.out.println(userInfo.getIdentity());
        System.out.println("学生".equals(userInfo.getIdentity()));
        if ("学生".equals(userInfo.getIdentity())) {
            return "redirect:/layui/page/addguarantee.jsp";
        } else {
            return "redirect:/layui/page/404.jsp";
        }
    }


    //楼管回复保修

    @RequestMapping("louGuanEditGuarantee")
    public String louGuanEditGuarantee(HttpServletRequest request) {
        System.out.println("进到了楼管编辑保修的页面的controller");
        Student userInfo = (Student) request.getSession().getAttribute("userInfo");
        System.out.println(userInfo.getIdentity());
        System.out.println("楼管".equals(userInfo.getIdentity()));
        if ("楼管".equals(userInfo.getIdentity())) {
            return "redirect:/layui/page/guarantee.jsp";
        } else {
            return "redirect:/layui/page/404.jsp";
        }
    }

    //管理员查看保修
    @RequestMapping("adminGuarantee")
    public String adminGuarantee(HttpServletRequest request) {
        System.out.println("进到了楼管编辑保修的页面的controller");
        Student userInfo = (Student) request.getSession().getAttribute("userInfo");
        System.out.println(userInfo.getIdentity());
        System.out.println("管理员".equals(userInfo.getIdentity()));
        if ("管理员".equals(userInfo.getIdentity())) {
            return "redirect:/layui/page/adminguarantee.jsp";
        } else {
            return "redirect:/layui/page/404.jsp";
        }
    }

    //学生提交保修的controller,先判断是不是学生，如果不是学生，那就进不去。如果可以，那就进入页面，然后通过ajax请求

    @RequestMapping("studentLookGuarantee")
    public String studentlookGuarantee(HttpServletRequest request) {
        System.out.println("进到了学生保修的页面的controller");
        Student userInfo = (Student) request.getSession().getAttribute("userInfo");
        System.out.println(userInfo.getIdentity());
        System.out.println("学生".equals(userInfo.getIdentity()));
        if ("学生".equals(userInfo.getIdentity())) {
            return "redirect:/layui/page/seeguarantee.jsp";
        } else {
            return "redirect:/layui/page/404.jsp";
        }
    }


}
