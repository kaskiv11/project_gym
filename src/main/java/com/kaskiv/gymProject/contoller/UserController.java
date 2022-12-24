package com.kaskiv.gymProject.contoller;

import com.kaskiv.gymProject.dao.UserDao;
import com.kaskiv.gymProject.model.*;
import com.kaskiv.gymProject.service.impl.*;
import org.apache.log4j.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


import javax.validation.Valid;
import java.security.Principal;


import java.util.List;
@Controller

public class UserController {
    @Autowired
    private UserServiceImp userService;
    @Autowired
    private CategoryServiceImp categoryService;
    @Autowired
    private ResultServiceImp resultService;
    @Autowired
    private PlanServiceImp planService;
    @Autowired
    private UserDao userDao;
    @Autowired
    private CoachServiceImp coachService;
    static final Logger logger = Logger.getLogger(UserController.class);

    @GetMapping("/profile")
    public String profileMain(){
        return "index";
    }

    @GetMapping("/chooseCoach")
    public String chooseCoachGet(Model model) {
        logger.info("Result control method get");
        List<Coach> coaches = coachService.allCoaches();
        model.addAttribute("coaches",coaches);
        return "chooseCoach";
    }



    @GetMapping("/resultControl")
    public String resultControl(Principal principal, Model model){
        logger.info("Result control method get");
        User user = userDao.findByUserName(principal.getName());
        List<Result> resultList= user.getResults();
        model.addAttribute("results", resultList);
        model.addAttribute("resultForm", new Result());
        return "resultControl";
    }
    @PostMapping("/resultControl")
    public String resultControlPost(@ModelAttribute("resultForm") @Valid Result result, Principal principal){
        logger.info("Result control method post");
        User user = userDao.findByUserName(principal.getName());

        resultService.addResult(user,result);
        userDao.save(user);
        return "redirect:/";
    }

    @GetMapping("/addPlan")
    public String addTrainingGet(Model model, Principal principal){
        User user = userDao.findByUserName(principal.getName());
        logger.info("Add plan method get");
        model.addAttribute("addPlan", new Plan());
        return "addPlan";
    }

    @PostMapping("/addPlan")
    public String addTrainingPost(@ModelAttribute("addPlan") @Valid Plan plan, Model model,
                                  Principal principal) {
        logger.info("Add plan method post");
        User user = userDao.findByUserName(principal.getName());

        planService.addPlan(user,plan);
        userDao.save(user);
        return "redirect:/";
    }


}
