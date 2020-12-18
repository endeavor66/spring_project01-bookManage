package com.zhongruan.dao;

import com.zhongruan.bean.Record;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BorrowDao {

    public List<Record> findAll(@Param("rid") int rid, @Param("bid") int bid, @Param("state") int state, @Param("start") int start, @Param("pageSize") int pageSize);

    public int findTotalCount(@Param("rid") int rid, @Param("bid") int bid, @Param("state") int state);

    public void addRecord(Record record);

    public void updateRecode(Record record);

}
