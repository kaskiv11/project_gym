package com.kaskiv.biathlonTrainingProject.contoller;

import com.kaskiv.biathlonTrainingProject.dao.CoachDao;
import com.kaskiv.biathlonTrainingProject.dao.UserDao;
import com.kaskiv.biathlonTrainingProject.model.Category;
import com.kaskiv.biathlonTrainingProject.model.Coach;
import com.kaskiv.biathlonTrainingProject.model.Training;
import com.kaskiv.biathlonTrainingProject.model.User;
import com.kaskiv.biathlonTrainingProject.service.impl.CategoryServiceImp;
import com.kaskiv.biathlonTrainingProject.service.impl.TrainingServiceImp;
import com.kaskiv.biathlonTrainingProject.service.impl.UserServiceImp;
import lombok.AllArgsConstructor;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.security.Principal;
import java.util.Collections;
import java.util.List;

@Controller
@AllArgsConstructor
@RequestMapping("/coach")
public class CoachController {
    @Autowired
    private UserServiceImp userService;
    @Autowired
    private CategoryServiceImp categoryService;

    @Autowired
    private TrainingServiceImp trainingService;

    @Autowired
    private UserDao userDao;
    @Autowired
    private CoachDao coachDao;

    static final Logger logger = Logger.getLogger(CoachController.class);

    @GetMapping("/main")
    public String index(){
        return "indexCoach";
    }

    @GetMapping("/addCategory")
    public String addCategory(Model model){
        logger.info("Add category method get");
        model.addAttribute("addCategory", new Category());

        return "addCategory";
    }

    @PostMapping("/addCategory")
    public String addCategories(@ModelAttribute("addCategory") @Valid Category category, Model model) {

        logger.info("Add category method post");
        if (!categoryService.createCategory(category) ){
            model.addAttribute("categoryError", "Дана категорія тренувань уже існує");
            return "addCategory";
        }

        return "redirect:/coach/main";
    }

    @GetMapping("/deleteCategory")
    public String deleteCategory(Model model) {
        logger.info("Delete category method get");
        List<Category> categoryList = categoryService.allCategory();
        model.addAttribute("categories",categoryList);
        return "deleteCategory";
    }

    @PostMapping("/deleteCategory")
    public String  deleteCategoryGet(@RequestParam(required = true, defaultValue = "" ) Long categoryId,
                              @RequestParam(required = true, defaultValue = "" ) String action,
                              Model model) {
        logger.info("Delete category method post");
        if (action.equals("delete")){
            categoryService.deleteCategoryId(categoryId);
        }
        return "redirect:/coach/main";
    }

    @GetMapping("/deleteUser")
    public String deleteUserGet(Model model){
        logger.info("Delete user method get");
        List<User> users = userService.allUsers();
        model.addAttribute("users",users);
        return "deleteUser";
    }

    @PostMapping("/deleteUser")
    public String  deleteUser(@RequestParam(required = true, defaultValue = "" ) Long userId,
                              @RequestParam(required = true, defaultValue = "" ) String action,
                              Model model) {
        logger.info("Delete user method post");
        if (action.equals("delete")){
            userService.deleteUserId(userId);
        }
        return "redirect:/coach/main";
    }

    @GetMapping("/searchUser")
    public String searchUserGet(Model model){
        logger.info("Search user method get");
        List<User> userList = userService.allUsers();
        model.addAttribute("userList",userList);
        return "searchUser";
    }

    @PostMapping("/searchUser")
    public String searchUserPost(@RequestParam String lastName, @RequestParam String email, @RequestParam Long id, Model model){
        List<User> users = null;
        logger.info("Search user method post");
        if(lastName.length() !=0){
            users = (List<User>) userService.findUserByLastName(lastName);
        }
        if(email.length()!=0){
           users= Collections.singletonList(userService.findUserByEmail(email));
        }

        if(id != null ){
            users = Collections.singletonList(userService.findUserById(id));
        }
        model.addAttribute("userList",users);
        return "searchUser";
    }

    @GetMapping("/addUser")
    public String registrationUser(Model model) {
        logger.info("Add user method get");
        model.addAttribute("userForm", new User());

        return "addUser";
    }

    @PostMapping("/addUser")
    public String addUser(@ModelAttribute("userForm") @Valid User userForm, BindingResult bindingResult, Model model) {
        logger.info("Add user method post");
        if (bindingResult.hasErrors()) {
            return "addUser";
        }
        if (!userForm.getPassword().equals(userForm.getPasswordConfirm())){
            model.addAttribute("passwordError", "Пароли не співпадають");
            return "addUser";
        }
        if ( ! userService.createUser(userForm)){
            model.addAttribute("usernameError", "Користувач з таким іменем уже існує");
            return "addUser";
        }

        return "redirect:/coach/main";
    }

    @GetMapping("/addTraining")
    public String addTrainingGet(Model model, Principal principal){
        Coach coach = coachDao.findByUserName(principal.getName());
        logger.info("Add training method get");
        model.addAttribute("addTraining", new Training());
        return "addTraining";
    }

    @PostMapping("/addTraining")
    public String addTrainingPost(@ModelAttribute("addTraining") @Valid Training training, Model model,
                                  Principal principal) {
        logger.info("Add training method post");
        Coach coach = coachDao.findByUserName(principal.getName());

        if (!trainingService.addTraining(coach,training) ){
            model.addAttribute("trainingError", "Such training already exists");
            return "addTraining";
        }
        coachDao.save(coach);

        return "redirect:/coach/main";
    }

    @GetMapping("/deleteTraining")
    public String deleteTrainingGet(Model model, Principal principal) {
        logger.info("Delete training method post");
        Coach coach = coachDao.findByUserName(principal.getName());
        List<Training> trainingList = trainingService.allTraining();
        model.addAttribute("trainingList",trainingList);
        return "deleteTraining";
    }

    @PostMapping("/deleteTraining")
    public String  deleteTrainingPost(@RequestParam(required = true, defaultValue = "" ) Long trainingId,
                                     @RequestParam(required = true, defaultValue = "" ) String action,
                                     Model model, Principal principal) {
        logger.info("Delete training method get");
        Coach coach = coachDao.findByUserName(principal.getName());
        if (action.equals("delete")){
            trainingService.deleteTraining(trainingId);
        }
        return "redirect:/coach/main";
    }

}
