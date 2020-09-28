package com.jbit.config;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

@Component
public class AdminLoginInterceptor implements HandlerInterceptor {

//  在请求处理之前调用,只有返回true才会执行请求
  @Override
  public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
//      得到session
      HttpSession session = httpServletRequest.getSession(true);
//      得到对象
      Object admin = session.getAttribute("userName");
//      判断对象是否存在
      if(admin!=null){
    	  String urlString = httpServletRequest.getRequestURI();
    	  if(urlString.indexOf("/admin")>-1) {
    		  if(!admin.equals("Admin")) {
    			  httpServletResponse.sendRedirect(httpServletRequest.getContextPath()+"/user/loginView");
    			  return false;
    		  }
    	  }
          return true;
      }else{
//          不存在则跳转到登录页
          httpServletResponse.sendRedirect(httpServletRequest.getContextPath()+"/user/loginView");
          return false;
      }
  }

//  试图渲染之后执行
  @Override
  public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

  }

//  在请求处理之后,视图渲染之前执行
  @Override
  public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

  }
}
