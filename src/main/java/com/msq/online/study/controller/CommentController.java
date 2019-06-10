package com.msq.online.study.controller;

import com.msq.online.study.modle.Comment;
import com.msq.online.study.service.CommentService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("comment")
public class CommentController {
    private static final Logger logger = org.apache.log4j.Logger.getLogger(CourseController.class);
    @Autowired
    private CommentService commentService;

//    @RequestMapping("getComments/{courseId}")
//    public String getComments(@PathVariable Long courseId, Model model){
//        List<Comment> comments = commentService.selectByCourseId(courseId);
//        if (comments!=null){
//            model.addAttribute("comments",comments);
//            return "courses/show";
//        }
//        return "hello";
//    }
}
