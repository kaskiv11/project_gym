package com.kaskiv.gymProject.service;

import com.kaskiv.gymProject.model.Plan;
import com.kaskiv.gymProject.model.User;

import java.util.List;

public interface PlanService {

    boolean addPlan(User user, Plan plan);

    boolean deletePlan(Long planId);

    Plan findPlanById(Long planId);

    List<Plan> allPlans();
}
