package com.msq.online.study.service;

import com.msq.online.study.mapper.ParentSubjectMapper;
import com.msq.online.study.modle.ParentSubject;
public interface ParentSubjectService{


    int deleteByPrimaryKey(Long id);

    int insert(ParentSubject record);

    int insertSelective(ParentSubject record);

    ParentSubject selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(ParentSubject record);

    int updateByPrimaryKey(ParentSubject record);

}
