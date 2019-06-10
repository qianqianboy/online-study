package com.msq.online.study.controller;
/**
 * 定义全局异常处理类
 */

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;


@ControllerAdvice
public class GlobalExceptionResolver {

    @ExceptionHandler(Exception.class)
    public ModelAndView error(Exception exception){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("errorMsg",exception.getMessage());
        modelAndView.setViewName("error/500");
        return modelAndView;
    }
}
