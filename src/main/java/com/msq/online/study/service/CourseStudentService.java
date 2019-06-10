package com.msq.online.study.service;

import com.msq.online.study.mapper.CourseStudentMapper;
import com.msq.online.study.modle.Course;
import com.msq.online.study.modle.CourseStudent;

import java.util.List;

public interface CourseStudentService{


    int deleteByPrimaryKey(Long id);

    int insert(CourseStudent record);

    int insertSelective(CourseStudent record);

    CourseStudent selectByPrimaryKey(Long id);

    List<CourseStudent> selectByStudentId(Long studentId);

    int updateByPrimaryKeySelective(CourseStudent record);

    int updateByPrimaryKey(CourseStudent record);

}
