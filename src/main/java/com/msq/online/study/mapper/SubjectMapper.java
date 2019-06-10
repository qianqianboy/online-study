package com.msq.online.study.mapper;

import com.msq.online.study.modle.Course;
import com.msq.online.study.modle.Subject;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SubjectMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Subject record);

    int insertSelective(Subject record);

    Subject selectByPrimaryKey(Long id);

    Subject selectByTitle(String title);

    int updateByPrimaryKeySelective(Subject record);

    int updateByPrimaryKey(Subject record);


}