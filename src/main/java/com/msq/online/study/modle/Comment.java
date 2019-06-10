package com.msq.online.study.modle;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
public class Comment implements Serializable {
    /**
    * 评论id
    */
    private Long id;

    /**
    * 学生id
    */
    private Student student;

    /**
    * 课程id
    */
    private Long courseId;

    /**
    * 评论内容
    */
    private String content;

    /**
    * 创建时间
    */
    private Date createTime;

    /**
    * 逻辑删除，0代表未删除，1代表已删除
    */
    private Boolean isDeleted;

}