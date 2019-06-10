package com.msq.online.study.service.Impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import com.msq.online.study.modle.Course;
import com.msq.online.study.mapper.CourseMapper;
import com.msq.online.study.service.CourseService;

import java.util.List;

@Service
public class CourseServiceImpl implements CourseService {

    @Resource
    private CourseMapper courseMapper;

    @Override
    public int deleteByPrimaryKey(Long id) {
        return courseMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Course record) {
        return courseMapper.insert(record);
    }

    @Override
    public int insertSelective(Course record) {
        return courseMapper.insertSelective(record);
    }

    @Override
    public Course selectByPrimaryKey(Long id) {
        return courseMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Course record) {
        return courseMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Course record) {
        return courseMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<Course> selectByTeacherId(Long teacherId) {
        return courseMapper.selectByTeacherId(teacherId);
    }

    @Override
    public PageInfo<Course> selectAllCourse(Integer page) {
        PageHelper.startPage(page,6);
        List<Course> courses = courseMapper.selectAllCourse();
        if (courses!=null){
            PageInfo<Course> pageInfo = new PageInfo<>(courses, 3);
            return pageInfo;
        }
        throw new RuntimeException("请检查数据库里是否有课程");
    }

    @Override
    public PageInfo<Course> selectAllCourseByFollowedNum(Integer page) {
        PageHelper.startPage(page,6);
        List<Course> courses = courseMapper.selectAllCourseByFollowedNum();
        PageInfo<Course> pageInfo = new PageInfo<>(courses, 3);
        return pageInfo;
    }

    @Override
    public List<Course> selectByKeyWord(String queryText) {
        return courseMapper.selectByKeyWord(queryText);
    }

    @Override
    public List<Course> selectBySubjectIdOrderByFollowedNum(Long subjectId) {
        return courseMapper.selectBySubjectIdOrderByFollowedNum(subjectId);
    }


}

