package com.zhongruan.bean;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Record {

    private int rid;    //读者id
    private int bid;    //书籍id
    private String rname;   //读者姓名
    private String phone;   //读者电话
    private String bname;   //书名
    private String code;    //条形码
    private Integer duration;   //借阅时长
    private Date borrowTime;    //借阅时间
    private Date returnTime;    //还书时间
    private int state;      //状态码

    private static DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    public int getRid() {
        return rid;
    }

    public void setRid(int rid) {
        this.rid = rid;
    }

    public int getBid() {
        return bid;
    }

    public void setBid(int bid) {
        this.bid = bid;
    }

    public String getRname() {
        return rname;
    }

    public void setRname(String rname) {
        this.rname = rname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getBname() {
        return bname;
    }

    public void setBname(String bname) {
        this.bname = bname;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Integer getDuration() {
        return duration;
    }

    public void setDuration(Integer duration) {
        this.duration = duration;
    }

    public String getBorrowTime() {
        String bTime = "";
        if(borrowTime != null){
            bTime = df.format(borrowTime);
        }
        return bTime;
    }

    public void setBorrowTime(Date borrowTime) {
        this.borrowTime = borrowTime;
    }

    public String getReturnTime() {
        String rTime = "";
        if(returnTime != null){
            rTime = df.format(returnTime);
        }
        return rTime;
    }

    public void setReturnTime(Date returnTime) {
        this.returnTime = returnTime;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    @Override
    public String toString() {
        return "Record{" +
                "rid=" + rid +
                ", bid=" + bid +
                ", rname='" + rname + '\'' +
                ", phone='" + phone + '\'' +
                ", bname='" + bname + '\'' +
                ", code='" + code + '\'' +
                ", duration=" + duration +
                ", borrowTime=" + borrowTime +
                ", returnTime=" + returnTime +
                ", state=" + state +
                '}';
    }
}
