package com.msq.online.study.mapper;

import com.msq.online.study.modle.CourseStudent;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface CourseStudentMapper {
    int deleteByPrimaryKey(Long id);

    int insert(CourseStudent record);

    int insertSelective(CourseStudent record);

    CourseStudent selectByPrimaryKey(Long id);

    List<CourseStudent>  selectByCourseId(Long courseId);

    List<CourseStudent>  selectByStudentId(Long studentId);

    int updateByPrimaryKeySelective(CourseStudent record);

    int updateByPrimaryKey(CourseStudent record);

    CourseStudent selectByCourseIdAndStudentId(@Param("courseId") Long courseId, @Param("studentId") Long studentId);
}