package com.zhongruan.service;

import com.zhongruan.bean.PageBean;
import com.zhongruan.bean.Record;
import com.zhongruan.bean.ResultInfo;

import java.util.List;

public interface BorrowService {

    public PageBean<Record> findAll(String phone, String code, int state, int currentPage, int pageSize);

    public ResultInfo addRecord(Record record);

    public ResultInfo updateRecord(String phone, String code);
}
