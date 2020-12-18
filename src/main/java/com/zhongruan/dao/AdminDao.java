package com.zhongruan.dao;

import com.zhongruan.bean.Admin;
import org.apache.ibatis.annotations.Param;


public interface AdminDao {

    public Admin login(@Param("username") String username, @Param("password") String password);
}
