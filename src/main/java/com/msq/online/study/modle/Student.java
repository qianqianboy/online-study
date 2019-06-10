package com.msq.online.study.modle;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;
@Data
public class Student implements Serializable {
    private Long id;

    /**
    * 学生邮箱
    */
    private String email;

    /**
    * 学生姓名
    */
    private String name;

    /**
    * 学生登录密码
    */
    private String password;

    /**
    * 学生头像，存图片地址
    */
    private String image;

    /**
    * 学生性别
    */
    private String sex;

    /**
    * 逻辑删除
    */
    private Boolean isDeleted;

    /**
    * 创建时间
    */
    private Date createTime;

    /**
    * 更新时间
    */
    private Date updateTime;

}