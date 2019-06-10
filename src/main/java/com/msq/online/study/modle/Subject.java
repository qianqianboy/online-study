package com.msq.online.study.modle;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
@Data
public class Subject implements Serializable {
    /**
    * 类别id
    */
    private Long id;

    /**
    * 类别标题
    */
    private String title;

    /**
    * 上一级标题
    */
    private Long parentId;

    private List<Course> courses;

    /**
    * 创建时间
    */
    private Date createTime;

    /**
    * 更新时间
    */
    private Date updateTime;

}