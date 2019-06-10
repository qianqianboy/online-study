package com.msq.online.study.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.msq.online.study.modle.*;
import com.msq.online.study.service.CommentService;
import com.msq.online.study.service.CourseService;
import com.msq.online.study.service.CourseStudentService;
import com.msq.online.study.service.SubjectService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("course")
public class CourseController {
    private static final Logger logger = org.apache.log4j.Logger.getLogger(CourseController.class);
    @Autowired
    private CourseService courseService;
    @Autowired
    private SubjectService subjectService;
    @Autowired
    private CommentService commentService;
    @Autowired
    private CourseStudentService courseStudentService;

    @RequestMapping("show/{page}")
    public String show(@PathVariable(value ="page",required = true) Integer page, Model model){
        PageInfo<Course> pageInfo = courseService.selectAllCourse(page);
        model.addAttribute("pageInfo",pageInfo);
        return "courses/index";
    }
    @RequestMapping("showByPopular/{page}")
    public String showByPopular(@PathVariable Integer page, Model model){
        PageInfo<Course> pageInfo = courseService.selectAllCourseByFollowedNum(page);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("hottest","hottest");
        return "courses/index";
    }

    @RequestMapping("showHottest/{subjectId}/{page}")
    public String showOrderByFollowedNum(@PathVariable Long subjectId,@PathVariable Integer page, Model model){
        PageHelper.startPage(page,6);
        List<Course> courses = courseService.selectBySubjectIdOrderByFollowedNum(subjectId);
        PageInfo<Course> pageInfo = new PageInfo<>(courses,3);
        Subject subject = subjectService.selectByPrimaryKey(subjectId);
        model.addAttribute("subject1",subject);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("hottest","hottest");
        return "courses/indexbysubject";
    }
    @RequestMapping("findById/{courseId}")
    public String findById(@PathVariable Long courseId, Model model, HttpSession session){
        Course course = courseService.selectByPrimaryKey(courseId);
        List<Comment> comments = commentService.selectByCourseId(courseId);
        if (comments!=null){
            model.addAttribute("comments",comments);
        }
        if (course!=null){
            model.addAttribute("course",course);
            Student student = (Student)session.getAttribute("STUDENT");
            if (student!=null){
                List<CourseStudent> list = courseStudentService.selectByStudentId(student.getId());
                for (CourseStudent courseStudent : list) {
                    if (courseStudent.getCourse().getId().equals(courseId)){
                        model.addAttribute("isCollected","已收藏");
                    }
                }
            }
            return "courses/show";
        }
            return "hello";
    }
    @RequestMapping("search")
    public String showByPopular(@RequestParam(value = "queryText") String queryText,@RequestParam(defaultValue= "1") Integer page, Model model){
        PageHelper.startPage(page,6);
        List<Course> courses = courseService.selectByKeyWord(queryText);
        if (courses.isEmpty()){
            model.addAttribute("blank_result","null");
        }
        PageInfo<Course> pageInfo = new PageInfo<>(courses, 3);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("queryText",queryText);
        return "courses/search_result";
    }

}
