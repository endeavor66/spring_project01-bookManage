package com.zhongruan.dao;

import com.zhongruan.bean.Book;
import org.apache.ibatis.annotations.Param;

public interface BookDao {

    public Book findByCode(@Param("code") String code);
}
