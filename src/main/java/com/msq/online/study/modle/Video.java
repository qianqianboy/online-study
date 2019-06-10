package com.msq.online.study.modle;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;
@Data
public class Video implements Serializable {
    /**
    * 视频id
    */
    private Long id;

    /**
    * 所属课程
    */
    private Course course;

    /**
    * 所属章节
    */
    private Chapter chapter;

    /**
    * 视频标题
    */
    private String title;

    /**
    * 播放次数
    */
    private Long playCount;

    /**
    * 视频资源路径
    */
    private String videoSource;

    /**
    * 创建时间
    */
    private Date createTime;

    /**
    * 更新时间
    */
    private Date updateTime;
}