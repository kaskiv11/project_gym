package com.kaskiv.gymProject.contoller;

import com.kaskiv.gymProject.service.impl.UserServiceImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
    @Autowired
    private UserServiceImp userService;


   @GetMapping("/login")
    public String login() {

        return "login";
    }

}

