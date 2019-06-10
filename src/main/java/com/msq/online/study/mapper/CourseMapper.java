package com.msq.online.study.mapper;

import com.msq.online.study.modle.Course;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CourseMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Course record);

    int insertSelective(Course record);

    Course selectByPrimaryKey(Long id);

    List<Course> selectBySubjectId(Long subjectId);

    List<Course> selectByTeacherId(Long teacherId);

    int updateByPrimaryKeySelective(Course record);

    int updateByPrimaryKey(Course record);

    List<Course> selectAllCourse();

    List<Course> selectAllCourseByFollowedNum();

    List<Course> selectByKeyWord(String queryText);

    List<Course> selectBySubjectIdOrderByFollowedNum(Long subjectId);
}