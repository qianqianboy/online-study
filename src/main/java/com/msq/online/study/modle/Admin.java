package com.msq.online.study.modle;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;
@Data
public class Admin implements Serializable {
    private Long id;

    /**
    * 管理员用户名
    */
    private String username;

    /**
    * 管理员登录密码
    */
    private String password;

    /**
    * 创建时间
    */
    private Date createTime;

    /**
    * 更新时间
    */
    private Date updateTime;

    /**
    * 管理员工号
    */
    private String number;


}