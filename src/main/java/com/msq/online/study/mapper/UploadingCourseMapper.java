package com.msq.online.study.mapper;

import com.msq.online.study.modle.Course;
import com.msq.online.study.modle.UploadingCourse;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UploadingCourseMapper {
    int deleteByPrimaryKey(Long id);

    int insert(UploadingCourse record);

    int insertSelective(UploadingCourse record);

    Course selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(UploadingCourse record);

    int updateByPrimaryKey(UploadingCourse record);
}