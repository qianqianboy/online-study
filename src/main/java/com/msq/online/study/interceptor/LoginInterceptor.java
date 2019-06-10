package com.msq.online.study.interceptor;
/**
 * 登录拦截器
 */

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object object) throws Exception {
        HttpSession session = request.getSession();
        if(session.getAttribute("LOGIN_USER")!=null) {
            return true;
        }else {
            response.sendRedirect("/views/login/login.jsp");
            return false;
        }
    }
}
