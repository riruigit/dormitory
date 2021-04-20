package com.lingnan.dormitory.controller;

import com.alibaba.fastjson.JSONObject;
import com.lingnan.dormitory.pojo.Dorwater;
import com.lingnan.dormitory.pojo.Student;
import com.lingnan.dormitory.pojo.Vo;
import com.lingnan.dormitory.service.WaterService;
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
public class WaterController {

    @Autowired
    private WaterService waterService;

    @Autowired
    private Vo vo;

    @RequestMapping(value = "addwater", produces = "application/json;charset=utf-8")
    @ResponseBody
    public String addWater(Dorwater dorwater) {
        System.out.println("页面获取的水订单信息" + dorwater.toString());
        waterService.addWater(dorwater);
        return "已发送取水预约";
    }

    @RequestMapping("seewater")
    public void seeWater(HttpServletResponse response) throws IOException {
        System.out.println("进入了noticeAllListController层的方法");
        List<Object> water = waterService.seeWater();
        System.out.println(water);
        response.setContentType("text/html;charset=utf-8");
        vo.setCode(0);
        vo.setMsg("success");
        vo.setCount(water.size());
        vo.setData(water);
        response.getWriter().write(JSONObject.toJSON(vo).toString());
    }


    //学生提交取水预约，先判断是不是学生，不是就404

    @RequestMapping("studentAddWater")
    public String studentAddWater(HttpServletRequest request) {
        System.out.println("进入了学生取水的页面的controller");
        Student userInfo = (Student) request.getSession().getAttribute("userInfo");
        if ("学生".equals(userInfo.getIdentity())) {
            return "redirect:/layui/page/addwater.jsp";
        } else {
            return "redirect:/layui/page/404.jsp";
        }
    }



    //楼管查看取水
    @RequestMapping("louGuanAddWater")
    public String louGuanAddWater(HttpServletRequest request) {
        System.out.println("进入了楼管查看取水的页面的controller");
        Student userInfo = (Student) request.getSession().getAttribute("userInfo");
        if ("楼管".equals(userInfo.getIdentity())) {
            return "redirect:/layui/page/seewater.jsp";
        } else {
            return "redirect:/layui/page/404.jsp";
        }
    }


    //管理员查看取水
    @RequestMapping("adminWater")
    public String adminWater(HttpServletRequest request) {
        System.out.println("进入了管理员查看取水的页面的controller");
        Student userInfo = (Student) request.getSession().getAttribute("userInfo");
        if ("管理员".equals(userInfo.getIdentity())) {
            return "redirect:/layui/page/adminwater.jsp";
        } else {
            return "redirect:/layui/page/404.jsp";
        }
    }



}
