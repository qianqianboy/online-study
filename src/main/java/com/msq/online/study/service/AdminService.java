package com.msq.online.study.service;

import com.msq.online.study.modle.Admin;
import com.msq.online.study.mapper.AdminMapper;
public interface AdminService{


    int deleteByPrimaryKey(Long id);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);

}
