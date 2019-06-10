package com.msq.online.study.mapper;

import com.msq.online.study.modle.ParentSubject;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ParentSubjectMapper {
    int deleteByPrimaryKey(Long id);

    int insert(ParentSubject record);

    int insertSelective(ParentSubject record);

    ParentSubject selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(ParentSubject record);

    int updateByPrimaryKey(ParentSubject record);
}