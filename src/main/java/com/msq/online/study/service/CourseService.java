package com.msq.online.study.service;

import com.github.pagehelper.PageInfo;
import com.msq.online.study.modle.Course;

import java.util.List;

public interface CourseService {


    int deleteByPrimaryKey(Long id);

    int insert(Course record);

    int insertSelective(Course record);

    Course selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Course record);

    int updateByPrimaryKey(Course record);

    List<Course> selectByTeacherId(Long teacherId);

    /**
     * 显示全部课程(带分页功能，默认按课程上架时间倒序排列)
     * @param page 当前页码
     * @return 当前页码下的所有课程及分页信息
     */
    PageInfo<Course> selectAllCourse(Integer page);

    /**
     * 显示全部课程(带分页功能，按课程被收藏量降序排列)
     * @return 当前页码下的所有课程及分页信息
     */
    PageInfo<Course> selectAllCourseByFollowedNum(Integer page);

    List<Course> selectByKeyWord(String queryText);

    List<Course> selectBySubjectIdOrderByFollowedNum(Long subjectId);
}

