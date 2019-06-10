package com.msq.online.study.modle;

import lombok.Data;

import java.io.Serializable;
@Data
public class CourseStudent implements Serializable {
    /**
    * 中间表id
    */
    private Long id;

    /**
    * 课程
    */
    private Course course;

    /**
    * 学生id
    */
    private Long studentId;


}