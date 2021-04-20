package com.lingnan.dormitory.controller;

import com.alibaba.fastjson.JSONObject;
import com.lingnan.dormitory.pojo.Dornotice;
import com.lingnan.dormitory.pojo.Student;
import com.lingnan.dormitory.pojo.Vo;
import com.lingnan.dormitory.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @author 18364
 */
@Controller
public class NoticeController {

    @Autowired
    private NoticeService noticeService;
    @Autowired
    private Vo Vo;

    @RequestMapping("list")
    public void noteList(HttpServletRequest request) {
        System.out.println("进入了noteController方法");
        request.getSession().setAttribute("notelist", noticeService.noticeList());
        System.out.println(request.getSession().getAttribute("notelist"));
    }


    @RequestMapping("allList")
    public void noteAllList(HttpServletResponse response) throws IOException {
        System.out.println("进入了noticeAllListController层的方法");
        List<Object> dornotices = noticeService.noteAllList();
        System.out.println(dornotices);
        response.setContentType("text/html;charset=utf-8");
        Vo.setCode(0);
        Vo.setMsg("success");
        Vo.setCount(dornotices.size());
        Vo.setData(dornotices);
        response.getWriter().write(JSONObject.toJSON(Vo).toString());
    }





    //查看全部公告的controller
    //需要分三个权限，一个是学生的一个是管理员的，一个是楼管的，有三个页面
    //先在api里面写controller的注解，然后在判断身份，如果是就放行，如果不是那就去404页面

    @RequestMapping("studentAllNotice")
    public String studentAllNotice(HttpServletRequest request) {
        System.out.println("进到了学生查看全部公告的controller");
        Student userInfo = (Student) request.getSession().getAttribute("userInfo");
        System.out.println(userInfo.toString() + userInfo.getIdentity());
        if ("学生".equals(userInfo.getIdentity())) {
            return "redirect:/layui/page/studentAllNotice.jsp";
        } else {
            return "redirect:/layui/page/404.jsp";
        }
    }



    @RequestMapping("louguanAllNotice")
    public String louGuanAllNotice(HttpServletRequest request) {
        System.out.println("进到了楼管查看全部公告的controller");
        Student userInfo = (Student) request.getSession().getAttribute("userInfo");
        System.out.println(userInfo.toString() + userInfo.getIdentity());
        if ("楼管".equals(userInfo.getIdentity())) {
            return "redirect:/layui/page/louguanAllNotice.jsp";
        } else {
            return "redirect:/layui/page/404.jsp";
        }
    }



    @RequestMapping("adminAllNotice")
    public String adminAllNotice(HttpServletRequest request) {
        System.out.println("进到了管理员查看全部公告的controller");
        Student userInfo = (Student) request.getSession().getAttribute("userInfo");
        System.out.println(userInfo.toString() + userInfo.getIdentity());
        System.out.println("管理员".equals(userInfo.getIdentity()));
        if ("管理员".equals(userInfo.getIdentity())) {
            return "redirect:/layui/page/adminAllNotice.jsp";
        } else {
            return "redirect:/layui/page/404.jsp";
        }
    }

//=================================================================


    @RequestMapping("louGuanEditNotice")
    public String toAllString(HttpServletRequest request) throws IOException {
        System.out.println("进到了楼管编辑公告的页面");
        Student userInfo = (Student) request.getSession().getAttribute("userInfo");
        System.out.println(userInfo.toString() + userInfo.getIdentity());
        if ("楼管".equals(userInfo.getIdentity())) {
            return "redirect:/layui/page/editnotice.jsp";
        } else {
            return "redirect:/layui/page/404.jsp";
        }
    }


    //编辑公告。

    @RequestMapping(value = "addNotice", produces = "application/json;charset=utf-8")
    @ResponseBody
    public String editNote(Dornotice dornotice) {
        System.out.println("进入了增加公告的办法");
        noticeService.addNotice(dornotice);
//        return "redirect:/layui/page/allnotice.jsp";
        return "已发布公告";
    }


}
