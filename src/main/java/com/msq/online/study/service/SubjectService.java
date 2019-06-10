package com.msq.online.study.service;

import com.msq.online.study.modle.Subject;
import com.msq.online.study.mapper.SubjectMapper;
public interface SubjectService{


    int deleteByPrimaryKey(Long id);

    int insert(Subject record);

    int insertSelective(Subject record);

    Subject selectByPrimaryKey(Long id);

    Subject selectByTitle(String title);

    int updateByPrimaryKeySelective(Subject record);

    int updateByPrimaryKey(Subject record);

}
