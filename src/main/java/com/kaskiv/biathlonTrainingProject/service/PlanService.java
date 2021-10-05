package com.kaskiv.biathlonTrainingProject.service;

import com.kaskiv.biathlonTrainingProject.model.Plan;
import com.kaskiv.biathlonTrainingProject.model.User;

import java.util.List;

public interface PlanService {

    boolean addPlan(User user, Plan plan);

    boolean deletePlan(Long planId);

    Plan findPlanById(Long planId);

    List<Plan> allPlans();
}
