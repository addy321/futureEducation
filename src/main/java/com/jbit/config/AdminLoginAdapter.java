package com.jbit.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringBootConfiguration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;


@SuppressWarnings("deprecation")
@SpringBootConfiguration
public class AdminLoginAdapter extends WebMvcConfigurerAdapter {
	
	@Autowired
    AdminLoginInterceptor adminLoginInterceptor;
 
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(adminLoginInterceptor).addPathPatterns("/admin/**").
        addPathPatterns("/user/**").
        excludePathPatterns("/user/loginView")
        .excludePathPatterns("/user/index")
        .excludePathPatterns("/user/Login");
        super.addInterceptors(registry);
    }
}
