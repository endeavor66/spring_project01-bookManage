package com.zhongruan.controller;

import com.zhongruan.bean.Admin;
import com.zhongruan.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("admin")
public class AdminController {

    @Autowired
    private AdminService adminService;

    @RequestMapping("login.do")
    public ModelAndView login(String username, String password){
        ModelAndView mv = new ModelAndView();
        Admin admin = adminService.login(username, password);
        if(admin == null){
            System.out.println("登陆失败");
            mv.setViewName("../erro");
        }else{
            mv.setViewName("main");
        }
        return mv;
    }
}
