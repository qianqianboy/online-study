package com.msq.online.study.modle;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Data
public class UploadingCourse implements Serializable {
    /**
     * 课程id
     */
    private Long id;

    /**
     * 所属学科id
     */
    private Long subjectId;

    /**
     * 讲师id
     */
    private Long teacherId;

    /**
     * 课程标题
     */
    private String title;


    /**
     * 课程总学时，即一个课程的视频总量
     */
    private Integer lessonNum;

    /**
     * 课程封面，存图片地址
     */
    private String image;

    /**
     * 课程状态
     */
    private String status;

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

    /**
     * 课程被收藏量
     */
    private Integer followedNum;

    /**
     * 课程所属教师名
     */
    private String author;
}