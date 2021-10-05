package com.kaskiv.biathlonTrainingProject.service.impl;

import com.kaskiv.biathlonTrainingProject.dao.UserDao;
import com.kaskiv.biathlonTrainingProject.model.Category;
import com.kaskiv.biathlonTrainingProject.model.Coach;
import com.kaskiv.biathlonTrainingProject.model.Plan;
import com.kaskiv.biathlonTrainingProject.model.User;
import com.kaskiv.biathlonTrainingProject.service.UserService;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.Set;

@Service
@Log4j
@Transactional
public class UserServiceImp implements UserService {
    @Autowired
    private UserDao userDao;


    @Override
    public boolean createUser(User user) {
        log.info("Create user");
       BCryptPasswordEncoder encoder = new  BCryptPasswordEncoder();
       user.setPassword(encoder.encode(user.getPassword()));

        User userFromDB = userDao.findByUserName(user.getUserName());
        if (userFromDB != null) {
            return false;
        }

        User emailUser = userDao.findUserByEmail(user.getEmail());
        if (emailUser != null) {
            return false;
        }

        List<Coach> coaches = new ArrayList<>() ;
        user.setCoaches(coaches);
        List<Plan> plans = new ArrayList<>() ;
        user.setPlans(plans);
        userDao.save(user);
        return true;
    }

    @Override
    public User findUserByEmail(String email){
        log.info("Find user by email");
      return   userDao.findUserByEmail(email);
    }
    @Override
    public boolean deleteUserId(Long userId) {
        log.info("Delete user by id");
        if (userDao.findById(userId).isPresent()) {
            userDao.deleteById(userId);
            return true;
        }
        return false;
    }

    @Override
    public User findUserById(Long userId) {
        log.info("Find user by id");
        Optional<User> userFromDb = userDao.findById(userId);
        return userFromDb.orElse(new User());
    }
    @Override
    public User findUserByLastName(String lastName){
        log.info("Find user by lastname");
    return userDao.findUserByLastName(lastName);
    }

    @Override
    public User findUserByPhone(String phone){
        log.info("Find user by phone user`s");
        return userDao.findUserByPhone(phone);
    }
    @Override
    public List<User> allUsers() {
        log.info("Find all users ");
        return (List<User>) userDao.findAll();
    }


}
