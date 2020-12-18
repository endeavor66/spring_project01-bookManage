package com.zhongruan.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.zhongruan.bean.PageBean;
import com.zhongruan.bean.Record;
import com.zhongruan.bean.ResultInfo;
import com.zhongruan.service.BorrowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.*;


@Controller
@RequestMapping("borrow")
public class BorrowController {

    @Autowired
    private BorrowService service;

    /**
     * * 组合条件查询所有：根据电话、条形码两个条件的组合情况进行查询借阅/还书记录
     * @param phone (可选)
     * @param code  (可选)
     * @param state (必选)
     * @param currentPage (可选)
     * @param pageSize  (可选)
     * @return
     */
    @RequestMapping("findAll.do")
    public ModelAndView findAll(String phone, String code, int state, @RequestParam(defaultValue = "1") int currentPage,
                                @RequestParam(defaultValue = "5") int pageSize, @RequestParam(defaultValue = "3") int type, HttpSession session){
        if(type == 1){
            //点击借阅图书
            session.removeAttribute("phone");
            session.removeAttribute("code");
        }else if(type == 2){
            //点击搜索
            session.setAttribute("phone", phone);
            session.setAttribute("code", code);
        }else{
            //其他情况，取出搜索条件
            phone = (String) session.getAttribute("phone");
            code = (String) session.getAttribute("code");
        }
        ModelAndView mv = new ModelAndView();
        PageBean<Record> pageInfo = service.findAll(phone, code, state, currentPage, pageSize);
        if(state==1){
            mv.setViewName("book-borrow");
        }
        if(state==0){
            mv.setViewName("borrow-list");
        }
        mv.addObject("pageInfo", pageInfo);
        return mv;
    }

    /**
     * 添加借书记录
     * @param record,含 phone, code, duration
     * @return
     */
    @RequestMapping("addRecord.do")
    public void addRecord(Record record, HttpServletRequest request, HttpServletResponse response) throws IOException {
        ResultInfo info = service.addRecord(record);
        response.setContentType("application/json;charset=utf-8");
        ObjectMapper mapper = new ObjectMapper();
        String json = mapper.writeValueAsString(info);
        response.getWriter().write(json);
    }

    /**
     * 添加还书记录，更新记录中的state
     * @param phone
     * @param code
     * @return
     */
    @RequestMapping("updateRecord.do")
    @ResponseBody
    public String updateRecord(String phone, String code){
        service.updateRecord(phone, code);
        return "";
    }
}
