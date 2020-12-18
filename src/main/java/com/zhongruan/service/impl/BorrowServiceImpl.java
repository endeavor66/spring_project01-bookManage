package com.zhongruan.service.impl;

import com.zhongruan.bean.*;
import com.zhongruan.dao.BookDao;
import com.zhongruan.dao.BorrowDao;
import com.zhongruan.dao.ReaderDao;
import com.zhongruan.service.BorrowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class BorrowServiceImpl implements BorrowService {

    @Autowired
    private BorrowDao borrowDao;

    @Autowired
    private ReaderDao readerDao;

    @Autowired
    private BookDao bookDao;

    /**
     * 根据条件组合分页查询借/还书记录，参数：phone(可选),code(可选),state(必选)
     * @param phone
     * @param code
     * @param state
     * @param currentPage
     * @param pageSize
     * @return
     */
    @Override
    public PageBean<Record> findAll(String phone, String code, int state, int currentPage, int pageSize) {
        /**
         * 1.rid,bid取值的含义（以phone为例，code也是如此）
         *      -1：phone不为空，但数据库中没有查询到该用户信息，可以直接返回
         *       0：phone为空，不纳入组合条件查询。
         *     其他：phone不为空，且查询到该用户信息，纳入组合条件查询。
         */
        int rid = 0, bid = 0;
        Reader reader = null;
        Book book = null;
        if(phone!=null && !phone.equals("")){
            reader = readerDao.findByPhone(phone);
            rid = reader==null ? -1: reader.getRid();
        }
        if(code!=null && !code.equals("")){
            book = bookDao.findByCode(code);
            bid = book==null ? -1: book.getBid();
        }
        //2.若填写了查询条件，但是数据库中未找到信息，则直接返回
        PageBean<Record> pb = new PageBean<Record>();
        if(rid==-1 || bid==-1){
            return pb;
        }
        //3.根据phone,code,state查询出总记录数
        rid = reader==null ? 0: reader.getRid();
        bid = book==null ? 0 : book.getBid();
        int totalCount = borrowDao.findTotalCount(rid, bid, state);
        int totalPage = (int) Math.ceil(totalCount * 1.0 / pageSize);
        //4.处理边界情况
        if(currentPage < 1){
            currentPage = 1;
        }
        if(currentPage > totalPage){
            currentPage = totalPage;
        }
        //5.按条件查询记录
        int start = (currentPage - 1) * pageSize;
        List<Record> records = borrowDao.findAll(rid, bid, state, start, pageSize);
        //6.封装pageBean对象
        pb.setTotalCount(totalCount);
        pb.setTotalPage(totalPage);
        pb.setCurrentPage(currentPage);
        pb.setPageSize(pageSize);
        pb.setList(records);

        return pb;
    }

    /**
     * 添加借书记录，参数：phone,code,duration
     * @param record
     * @return
     */
    @Override
    public ResultInfo addRecord(Record record) {
        //1.首先根据phone和code查询是否存在 读者 、 书籍
        Integer duration = record.getDuration();
        Reader reader = readerDao.findByPhone(record.getPhone());
        Book book = bookDao.findByCode(record.getCode());
        //2.根据查询结果设置相应消息
        ResultInfo info = new ResultInfo();
        if(reader == null){
            info.setFlag(0);
            info.setErrorMsg("读者电话无效");
            return info;
        }
        if(book == null){
            info.setFlag(0);
            info.setErrorMsg("条形码无效");
            return info;
        }
        //3.保存记录
        record.setRid(reader.getRid());
        record.setBid(book.getBid());
        record.setBorrowTime(new Date());
        record.setState(1);

        System.out.println(record);
        borrowDao.addRecord(record);
        //4.返回执行结果
        info.setFlag(1);
        return info;
    }

    /**
     * 还书功能，只需根据phone,code查询到rid,bid，然后更新状态即可。
     * @param phone
     * @param code
     * @return
     */
    @Override
    public ResultInfo updateRecord(String phone, String code) {
        //1.首先根据phone和code查询是否存在 读者 、 书籍
        Reader reader = readerDao.findByPhone(phone);
        Book book = bookDao.findByCode(code);
        //2.根据查询结果设置相应消息
        ResultInfo info = new ResultInfo();
        if(reader == null){
            info.setFlag(0);
            info.setErrorMsg("读者电话无效");
            return info;
        }
        if(book == null){
            info.setFlag(0);
            info.setErrorMsg("条形码无效");
            return info;
        }
        //3.保存记录
        Record record = new Record();
        record.setRid(reader.getRid());
        record.setBid(book.getBid());
        record.setReturnTime(new Date());
        record.setState(0);

        borrowDao.updateRecode(record);
        //4.返回执行结果
        info.setFlag(1);
        return info;
    }

}
