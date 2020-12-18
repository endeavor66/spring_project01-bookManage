package com.zhongruan.dao;

import com.zhongruan.bean.Reader;
import org.apache.ibatis.annotations.Param;


public interface ReaderDao {

    public Reader findByPhone(@Param("phone") String phone);
}
