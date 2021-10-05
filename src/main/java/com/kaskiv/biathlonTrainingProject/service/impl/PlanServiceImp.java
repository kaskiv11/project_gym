package com.kaskiv.biathlonTrainingProject.service.impl;

import com.kaskiv.biathlonTrainingProject.dao.PlanDao;
import com.kaskiv.biathlonTrainingProject.model.Plan;
import com.kaskiv.biathlonTrainingProject.model.User;
import com.kaskiv.biathlonTrainingProject.service.PlanService;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
@Log4j
@Service
public class PlanServiceImp implements PlanService {
    @Autowired
    private PlanDao planDao;

    @Override
    public boolean addPlan(User user, Plan plan) {
        log.info("Plan add service ");
        plan.setUser(user);
        planDao.save(plan);
        return true;
    }


    @Override
    public boolean deletePlan(Long planId) {

        if (planDao.findById(planId).isPresent()) {
            planDao.deleteById(planId);
            return true;
        }
        log.info("Plan not deleted service");
        return false;

    }
    @Override
    public Plan findPlanById(Long planId) {
        Optional<Plan> userFromDb = planDao.findById(planId);
        return userFromDb.orElse(new Plan());
    }
    @Override
    public List<Plan> allPlans() {
        return (List<Plan>) planDao.findAll();
    }

}
