package com.kaskiv.biathlonTrainingProject.contoller;

import com.kaskiv.biathlonTrainingProject.dto.CoachDto;
import com.kaskiv.biathlonTrainingProject.model.Category;
import com.kaskiv.biathlonTrainingProject.model.Coach;
import com.kaskiv.biathlonTrainingProject.model.User;
import com.kaskiv.biathlonTrainingProject.service.impl.CategoryServiceImp;
import com.kaskiv.biathlonTrainingProject.service.impl.CoachServiceImp;
import com.kaskiv.biathlonTrainingProject.service.impl.UserServiceImp;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.List;
@Log4j
@Controller
public class RegistrationController {

    @Autowired
    private UserServiceImp userService;

    @Autowired
    private CoachServiceImp coachService;

    @Autowired
    private CategoryServiceImp categoryService;

    @GetMapping("/")
    public String index(){
        return "index";
    }


    @GetMapping(value = {"/registration"})
    public ModelAndView registration(){
        log.info("Registration controller get");
        ModelAndView modelAndView = new ModelAndView();
        try {
            modelAndView.addObject("userModel", new User());
            modelAndView.setViewName("registration");
        }catch (Exception exception){
            log.info("Exception  registation user get");
        }
        return modelAndView;


    }
    @PostMapping("/registration")
    public String registration(@ModelAttribute("userModel") @Valid User userModel,
                               BindingResult result, ModelMap model){
        log.info("Registration controller post");
        if (result.hasErrors()) {
            model.addAttribute("emailError", "Email address is wrong");
            return "registration";
        }
        if (!userModel.getPassword().equals(userModel.getPasswordConfirm())){
            model.addAttribute("passwordError", "Passwords do not match");
            return "registrationCoach";
        }
        if (!userService.createUser(userModel)){
            model.addAttribute("usernameError", "Such a user already exists");
            return "registration";
        }
        return "redirect:/";
    }

    @GetMapping(value = {"/registrationCoach"})
    public ModelAndView registrationCoachGet(ModelMap model) {
        log.info("Registration coaches");
        ModelAndView modelAndView = new ModelAndView();
        try {
            modelAndView.addObject("coachForm", new CoachDto());
            modelAndView.setViewName("registrationCoach");
            List<Category> categoryList = categoryService.allCategory();
            model.addAttribute("listCategory",categoryList);
        } catch (Exception exception) {
            log.info("Exception  registration user get");
        }
        return modelAndView;
    }

    @PostMapping("/registrationCoach")
    public String addCoach(@ModelAttribute("coachForm") @Valid CoachDto coachForm, String categoryName, BindingResult bindingResult, ModelMap model) {
        log.info("Registration coaches post");
        categoryService.findCategoryByCategoryName(categoryName);

        //model.addAttribute("selectedCatId", coachForm.getCategoryName());
        if (bindingResult.hasErrors()) {
            return "registrationCoach";
        }
        if (!coachForm.getPassword().equals(coachForm.getPasswordConfirm())){
            model.addAttribute("passwordError", "Passwords do not match");
            return "registrationCoach";
        }
        if ( ! coachService.createCoach(coachForm)){
            model.addAttribute("usernameError", "Such a user already exists");
            return "registrationCoach";
        }

        return "redirect:/coach/main";
    }

}
