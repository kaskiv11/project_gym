package com.kaskiv.gymProject.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MvcConfig implements WebMvcConfigurer {

    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/registration").setViewName("registration");
        registry.addViewController("/").setViewName("index");
        registry.addViewController("/profile").setViewName("index");
        registry.addViewController("/aboutUs").setViewName("aboutUs");
        registry.addViewController("/registrationCoach").setViewName("registrationCoach");
        registry.addViewController("/login").setViewName("login");
        registry.addViewController("/indexCoach").setViewName("indexCoach");
        registry.addViewController("/addCategory").setViewName("addCategory");
        registry.addViewController("/addUser").setViewName("addUser");
        registry.addViewController("/searchUser").setViewName("searchUser");
        registry.addViewController("/deleteUser").setViewName("deleteUser");
        registry.addViewController("/deleteTraining").setViewName("addTraining");
        registry.addViewController("/addTraining").setViewName("deleteTraining");
        registry.addViewController("/chooseCoach").setViewName("chooseCoach");
        registry.addViewController("/resultControl").setViewName("resultControl");
        registry.addViewController("/addPlan").setViewName("addPlan");
        registry.addViewController("/сhoiceSubsription").setViewName("сhoiceSubsription");
    }
}
