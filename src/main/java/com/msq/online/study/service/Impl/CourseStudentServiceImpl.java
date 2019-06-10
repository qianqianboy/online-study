package com.msq.online.study.service.Impl;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import com.msq.online.study.mapper.CourseStudentMapper;
import com.msq.online.study.modle.CourseStudent;
import com.msq.online.study.service.CourseStudentService;

import java.util.List;

@Service
public class CourseStudentServiceImpl implements CourseStudentService{

    @Resource
    private CourseStudentMapper courseStudentMapper;

    @Override
    public int deleteByPrimaryKey(Long id) {
        return courseStudentMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(CourseStudent record) {
        return courseStudentMapper.insert(record);
    }

    @Override
    public int insertSelective(CourseStudent record) {
        return courseStudentMapper.insertSelective(record);
    }

    @Override
    public CourseStudent selectByPrimaryKey(Long id) {
        return courseStudentMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<CourseStudent> selectByStudentId(Long studentId) {
        return courseStudentMapper.selectByStudentId(studentId);
    }

    @Override
    public int updateByPrimaryKeySelective(CourseStudent record) {
        return courseStudentMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(CourseStudent record) {
        return courseStudentMapper.updateByPrimaryKey(record);
    }

}
