package com.kaskiv.gymProject.service.impl;

import com.kaskiv.gymProject.dao.CategoryDao;
import com.kaskiv.gymProject.dao.CoachDao;
import com.kaskiv.gymProject.dto.CoachDto;
import com.kaskiv.gymProject.model.Coach;
import com.kaskiv.gymProject.model.Training;
import com.kaskiv.gymProject.model.User;
import com.kaskiv.gymProject.service.CoachService;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
@Service
@Log4j
@Transactional
public class CoachServiceImp  implements CoachService {
    @Autowired
    private CoachDao coachDao;
    @Autowired
    private CategoryDao categoryDao;

    @Override
    public boolean createCoach(CoachDto coachDto) {
        log.info("Create coaches");
        Coach coachFromDB = coachDao.findByUserName(coachDto.getUserName());
        if (coachFromDB != null) {
            return false;
        }

        Coach emailCouch = coachDao.findCoachByEmail(coachDto.getEmail());
        if (emailCouch != null) {
            return false;
        }
        Coach coach = new Coach();
        coach.setPhone(coachDto.getPhone());
        coach.setFirstName(coachDto.getFirstName());
        coach.setLastName(coachDto.getLastName());
        coach.setUserName(coachDto.getUserName());
        coach.setPassword(coachDto.getPassword());
        coach.setPasswordConfirm(coachDto.getPasswordConfirm());
        coach.setAddress(coachDto.getAddress());
        coach.setAwards(coachDto.getAwards());
        coach.setEmail(coachDto.getEmail());
        coach.setAge(coachDto.getAge());
        coach.setDescription(coachDto.getDescription());
        BCryptPasswordEncoder encoder = new  BCryptPasswordEncoder();
        coach.setPassword(encoder.encode(coach.getPassword()));

        List<User> users = new ArrayList<>();
        coach.setUsers(users);
        List<Training> trainings = new ArrayList<>() ;
        coach.setTrainings(trainings);

        coach.setCategory(categoryDao.findByCategoryName(coachDto.getCategoryName()));

        coachDao.save(coach);
        return true;
    }
    @Override
    public void findCoachByhEmail(String email){
        log.info("Find coach by email");
        coachDao.findCoachByEmail(email);
    }
    @Override
    public boolean deleteCoach(Long coachId) {
        log.info("Delete coach by id");
        if (coachDao.findById(coachId).isPresent()) {
            coachDao.deleteById(coachId);
            return true;
        }
        return false;
    }

    @Override
    public Coach findCoachById(Long coachId) {
        log.info("Find coach by id");
        Optional<Coach> userFromDb = coachDao.findById(coachId);
        return userFromDb.orElse(new Coach());
    }
    @Override
    public List<Coach> allCoaches() {

        log.info("List coaches");
        return (List<Coach>) coachDao.findAll();
    }



}
