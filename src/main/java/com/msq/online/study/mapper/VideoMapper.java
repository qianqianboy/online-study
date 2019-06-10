package com.msq.online.study.mapper;

import com.msq.online.study.modle.Video;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface VideoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Video record);

    int insertSelective(Video record);

    Video selectByPrimaryKey(Long id);

    Video selectByChapterId(Long chapterId);

    int updateByPrimaryKeySelective(Video record);

    int updateByPrimaryKey(Video record);

}