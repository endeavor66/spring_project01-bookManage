package com.zhongruan.service.impl;

import com.zhongruan.bean.Admin;
import com.zhongruan.dao.AdminDao;
import com.zhongruan.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminDao adminDao;

    @Override
    public Admin login(String username, String password) {
        return adminDao.login(username, password);
    }
}
