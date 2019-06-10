package com.msq.online.study.controller;

import com.msq.online.study.bean.Result;
import com.msq.online.study.modle.Chapter;
import com.msq.online.study.modle.Course;
import com.msq.online.study.modle.Video;
import com.msq.online.study.service.CourseService;
import com.msq.online.study.service.VideoService;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.UUID;

@Controller
@RequestMapping("video")
public class VideoController {
    @Autowired
    private VideoService videoService;
    @Autowired
    private ServletContext servletContext;
    @RequestMapping("player/{videoId}")
    public String showVideo(@PathVariable Long videoId, Model model){
        Video video = videoService.selectByPrimaryKey(videoId);
        model.addAttribute("video",video);
        return "video/index";
    }
    @RequestMapping("upload")
    public String uploadVideo(Video video,MultipartFile videoName) throws IOException {
        String fileName = UUID.randomUUID().toString().replace("-","");
        String realName=videoName.getOriginalFilename();
        String typeName=realName.substring(realName.lastIndexOf("."));
        String savePath=servletContext.getRealPath("/test");
        String saveName=fileName+typeName;
        videoName.transferTo(new File(savePath+"/"+saveName));
        video.setVideoSource(fileName);
        Course course = new Course();
        course.setId(103L);
        Chapter chapter = new Chapter();
        chapter.setId(16L);
        video.setCourse(course);
        video.setChapter(chapter);
        video.setTitle("闵思迁的专场！");
        videoService.insertSelective(video);
        return "index";
    }

    @RequestMapping("download/{filename}")
    public void download(HttpServletRequest request,HttpServletResponse response,@PathVariable String filename) throws IOException {
        //checkPay.apk为需要下载的文件
        //String filename = "checkPay.apk";   //我这里使用的是一个固定的文件，方法可以不用写filename参数
        //获取文件的绝对路径名称，apk为根目录下的一个文件夹，这个只能获取根目录文件夹的绝对路径
        String path = servletContext.getRealPath("\\test")+"\\"+filename+".mp4";
        System.out.println(path);

        //得到要下载的文件
        File file = new File(path);
        if (!file.exists()) {
            response.setContentType("text/html; charset=UTF-8");
            response.getWriter().print("<html><body><script type='text/javascript'>alert('您要下载的资源已被删除！');</script></body></html>");
            response.getWriter().close();
            return;
        }
        //转码，免得文件名中文乱码
        filename = URLEncoder.encode(filename,"UTF-8");
        //设置文件下载头
        response.addHeader("Content-Disposition", "attachment;filename=" + filename);
        //1.设置文件ContentType类型，这样设置，会自动判断下载文件类型
        response.setContentType("multipart/form-data");
        // 读取要下载的文件，保存到文件输入流
        FileInputStream in = new FileInputStream(path);
        // 创建输出流
        OutputStream out = response.getOutputStream();
        // 创建缓冲区
        byte buffer[] = new byte[1024]; // 缓冲区的大小设置是个迷  我也没搞明白
        int len = 0;
        //循环将输入流中的内容读取到缓冲区当中
        while((len = in.read(buffer)) > 0){
            out.write(buffer, 0, len);
        }
        //关闭文件输入流
        in.close();
        // 关闭输出流
        out.close();
    }

    @RequestMapping("/download2/{fileName}/{fileTitle}")
    public ResponseEntity<byte[]> download2(@PathVariable String fileName, @PathVariable String fileTitle) throws Exception {
        String dir = servletContext.getRealPath("/test");
        HttpHeaders headers = new HttpHeaders();
        //设置响应头:下载文件
        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
        //设置建议保存名称
        fileTitle = URLEncoder.encode(fileTitle+".mp4", "utf-8");
        headers.setContentDispositionFormData("attachment", fileTitle);
        return new ResponseEntity<>(FileUtils.readFileToByteArray(new File(dir, fileName)), headers,
                HttpStatus.CREATED);
    }
    @RequestMapping("findById/{videoId}")
    @ResponseBody
    public Result findById(@PathVariable Long videoId){
        Video video = videoService.selectByPrimaryKey(videoId);
        if (video!=null){
            return Result.success().add("video",video);
        }
        return Result.fail().add("error","查询视频失败！");
    }
}
