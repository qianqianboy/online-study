package com.msq.online.study.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.msq.online.study.modle.Course;
import com.msq.online.study.modle.Subject;
import com.msq.online.study.service.SubjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("subject")
public class SubjectController {
    @Autowired
    private SubjectService subjectService;
    @RequestMapping("findByTitle/{title}/{page}")
    public String findByTitle(@PathVariable String title,@PathVariable Integer page, Model model){
        Subject subject = subjectService.selectByTitle(title);
        PageHelper.startPage(page,6);
        List<Course> courses = subject.getCourses();
        PageInfo<Course> pageInfo = new PageInfo<>(courses, 3);
        if (pageInfo!=null){
            model.addAttribute("subject",subject);
            model.addAttribute("pageInfo",pageInfo);
            return "courses/indexbysubject";
        }
        return "hello";
    }
}
