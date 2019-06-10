package com.msq.online.study.controller;
import com.msq.online.study.modle.*;
import com.msq.online.study.service.CourseService;
import com.msq.online.study.service.CourseStudentService;
import com.msq.online.study.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("teacher")
public class TeacherController {
    @Autowired
    private TeacherService teacherService;
    @Autowired
    private CourseService courseService;
    @PostMapping("login")
    public String login(@RequestParam(value = "email",required = true) String email, @RequestParam(value = "password",required = true) String password, HttpSession session){
        Teacher login = teacherService.login(email, password);
        if (login==null){
            return "index";
        }
        session.setAttribute("TEACHER",login);
        return "redirect:/teacher/info";
    }
    @RequestMapping("info")
    public String getUserInfo(){
        return "teacher/info";
    }
    @RequestMapping("logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:/course/show/1";
    }
    @RequestMapping("tologin")
    public String tologin(){
        return "login/tlogin";
    }

    @RequestMapping("/mycourses/{teacherId}")
    public String getMyCourses(@PathVariable Long teacherId, Model model){
        List<Course> list = courseService.selectByTeacherId(teacherId);
        model.addAttribute("list",list);
        return "teacher/uploadedcourse";
    }

    @RequestMapping("upload")
    public String upload(UploadingCourse course, @RequestParam("imageName") MultipartFile imageName) throws IOException {
        boolean ret = teacherService.upload(course,imageName);
        if (ret){
            return "teacher/upload";
        }
        throw new RuntimeException("传课失败");
    }
}
