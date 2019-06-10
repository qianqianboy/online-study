package com.msq.online.study.modle;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
@Data
public class Chapter implements Serializable {
    /**
    * 章节id
    */
    private Long id;

    /**
    * 所属课程id
    */
    private Long courseId;

    /**
    * 章节标题
    */
    private String title;

    /**
     * 每个章节下的所有视频
     */
    private List<Video> videos;

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