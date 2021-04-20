package com.lingnan.dormitory.controller;

import com.alibaba.fastjson.JSONObject;
import com.lingnan.dormitory.pojo.Dorfeedback;
import com.lingnan.dormitory.pojo.Student;
import com.lingnan.dormitory.pojo.Vo;
import com.lingnan.dormitory.service.FeedbackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
public class FeedbackController {

    @Autowired
    private FeedbackService feedbackService;

    @Autowired
    private Vo vo;

    //反馈的controller

    //学生提交反馈stuFeedBack

    //学生查看反馈（只是看自己提交的）

    //楼管查看并且回复（楼管查看全部的）

    //管理员查看（管理员也是查看全部，但是不能修改）



    @RequestMapping(value = "stuFeedBack", produces = "application/json;charset=utf-8")
    @ResponseBody
    public String stuFeedBack(Dorfeedback dorfeedback,HttpServletRequest request) {
        Student userInfo = (Student) request.getSession().getAttribute("userInfo");
        dorfeedback.setStudentid(userInfo.getId());
        feedbackService.addFeedBack(dorfeedback);
        return "已发送反馈请求";
    }

    @RequestMapping(value = "selectFeedBack", produces = "application/json;charset=utf-8")
    @ResponseBody
    public void select(HttpServletResponse response) throws IOException {
        System.out.println("进入了查询全部反馈的界面");
        List<Object> select = feedbackService.select();
        response.setContentType("text/html;charset=utf-8");
        vo.setCode(0);
        vo.setMsg("success");
        vo.setCount(select.size());
        vo.setData(select);
        response.getWriter().write(JSONObject.toJSON(vo).toString());
    }


    @RequestMapping(value = "selectOneFeedBack", produces = "application/json;charset=utf-8")
    @ResponseBody
    public void selectOne(HttpServletResponse response,HttpServletRequest request) throws IOException {
        System.out.println("进入了查询全部反馈的界面");
        Student userInfo = (Student) request.getSession().getAttribute("userInfo");
        System.out.println(userInfo.getId());
        List<Object> select = feedbackService.selectOne(userInfo.getId());
        System.out.println(select.toString());
        response.setContentType("text/html;charset=utf-8");
        vo.setCode(0);
        vo.setMsg("success");
        vo.setCount(select.size());
        vo.setData(select);
        response.getWriter().write(JSONObject.toJSON(vo).toString());
    }

    @RequestMapping(value = "updateFeedBack", produces = "application/json;charset=utf-8")
    @ResponseBody
    public String update(Dorfeedback dorfeedback,HttpServletRequest request) {
        System.out.println("进入了提交反馈的页面");
        Student userInfo = (Student) request.getSession().getAttribute("userInfo");
        dorfeedback.setStudentid(userInfo.getId());
        int update = feedbackService.update(dorfeedback);
        System.out.println(update);
        return "已更新反馈";
    }


    //判断有没有权限,学生提价反馈的

    @RequestMapping("studentAddFeedBack")
    public String studentFeedBack(HttpServletRequest request) {
        System.out.println("进入了学生反馈的页面的controller");
        Student userInfo = (Student) request.getSession().getAttribute("userInfo");
        if ("学生".equals(userInfo.getIdentity())) {
            return "redirect:/layui/page/addfeedback.jsp";
        } else {
            return "redirect:/layui/page/404.jsp";
        }
    }


    //楼管查看并且回复反馈

    @RequestMapping("louGuanFeedBack")
    public String louGuanFeedBack(HttpServletRequest request) {
        System.out.println("进入了楼管查看反馈的页面的controller");
        Student userInfo = (Student) request.getSession().getAttribute("userInfo");
        if ("楼管".equals(userInfo.getIdentity())) {
            return "redirect:/layui/page/feedback.jsp";
        } else {
            return "redirect:/layui/page/404.jsp";
        }
    }


    //管理员查看信息反馈

    @RequestMapping("adminFeedBack")
    public String adminFeedBack(HttpServletRequest request) {
        System.out.println("进入了管理员查看反馈的页面的controller");
        Student userInfo = (Student) request.getSession().getAttribute("userInfo");
        if ("管理员".equals(userInfo.getIdentity())) {
            return "redirect:/layui/page/adminfeedback.jsp";
        } else {
            return "redirect:/layui/page/404.jsp";
        }
    }


    //学生查看反馈
    @RequestMapping("seeFeedBack")
    public String seeFeedBack(HttpServletRequest request) {
        System.out.println("进入了管理员查看反馈的页面的controller");
        Student userInfo = (Student) request.getSession().getAttribute("userInfo");
        if ("学生".equals(userInfo.getIdentity())) {
            return "redirect:/layui/page/seefeedback.jsp";
        } else {
            return "redirect:/layui/page/404.jsp";
        }
    }



}
