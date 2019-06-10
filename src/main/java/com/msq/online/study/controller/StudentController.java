package com.msq.online.study.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.msq.online.study.bean.Result;
import com.msq.online.study.modle.Course;
import com.msq.online.study.modle.CourseStudent;
import com.msq.online.study.modle.Student;
import com.msq.online.study.service.CourseService;
import com.msq.online.study.service.CourseStudentService;
import com.msq.online.study.service.StudentService;
import org.apache.commons.codec.digest.Md5Crypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("student")
public class StudentController {

    @Autowired
    private StudentService studentService;
    @Autowired
    private CourseStudentService courseStudentService;
    @Autowired
    private CourseService courseService;
    @RequestMapping("info")
    public String getUserInfo(){
        return "user/13/reports";
    }
    @PostMapping("login")
    public String login(@RequestParam(value = "email",required = true) String email, @RequestParam(value = "password",required = true) String password, HttpSession session){
        Student login = studentService.login(email, password);
        if (login==null){
            return "index";
        }
        session.setAttribute("STUDENT",login);
        return "redirect:/course/show/1";
    }
    @PostMapping("register")
    public String register(@ModelAttribute("student") Student student){
        studentService.insertSelective(student);
        return "redirect:/course/show/1";
    }

    @RequestMapping("logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:/course/show/1";
    }

    @GetMapping("selectAll")
    public Result selectAll(Integer page){
        PageHelper.startPage(page,15);
        List<Student> students = studentService.selectAllStudent();
        PageInfo<Student> pageInfo = new PageInfo<>(students,3);
        return Result.success().add("pageInfo",pageInfo);
    }
    @RequestMapping("tologin")
    public String tologin(){
        return "login/login";
    }

    @RequestMapping("toregister")
    public String toregister(){
        return "register/register";
    }

    @RequestMapping("test")
    public void test(){
        Student student = new Student();
        String psw="12345678";
        student.setEmail("1505542385@qq.com");
        student.setName("闵思迁");
        student.setPassword(Md5Crypt.md5Crypt(psw.getBytes()));
        studentService.insertSelective(student);
    }
    @RequestMapping("/mycourses/{studentId}")
    public String getMyCourses(@PathVariable Long studentId, Model model){
        List<CourseStudent> list = courseStudentService.selectByStudentId(studentId);
        model.addAttribute("list",list);
        return "/user/13/study";
    }
    @RequestMapping("/updateInfo/{studentId}")
    public String updateInfo(@PathVariable Long studentId, Model model){
        Student student = studentService.selectByPrimaryKey(studentId);
        model.addAttribute("editor",student);
        return "/user/13/reports";
    }
    @RequestMapping("/update")
    public String update( Student student, HttpSession session){
        studentService.updateByPrimaryKeySelective(student);
        session.invalidate();
        return "index";
    }

    @RequestMapping("collection")
    public String collection(Long courseId,Long studentId){
        if (studentId==null){
            return "forward:/student/tologin";
        }
        boolean ret = studentService.collection(courseId, studentId);
        if (ret){
            return "redirect:/course/findById/"+courseId;
        }
        throw new RuntimeException("不能重复收藏");
    }

    @RequestMapping("cancel")
    public String cancel(Long courseId,Long studentId){
        boolean ret = studentService.cancel(courseId, studentId);
        if (ret){
            return "forward:/course/findById/"+courseId;
        }
        throw new RuntimeException("一直没有收藏");
    }

}
