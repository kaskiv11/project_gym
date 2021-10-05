package com.kaskiv.biathlonTrainingProject.contoller;

import com.kaskiv.biathlonTrainingProject.model.Coach;
import com.kaskiv.biathlonTrainingProject.model.User;
import com.kaskiv.biathlonTrainingProject.service.UserService;
import com.kaskiv.biathlonTrainingProject.service.impl.CoachServiceImp;
import com.kaskiv.biathlonTrainingProject.service.impl.UserServiceImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;

@Controller
public class LoginController {
    @Autowired
    private UserServiceImp userService;


   @GetMapping("/login")
    public String login() {

        return "login";
    }

}

