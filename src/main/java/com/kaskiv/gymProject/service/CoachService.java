package com.kaskiv.gymProject.service;

import com.kaskiv.gymProject.dto.CoachDto;
import com.kaskiv.gymProject.model.Coach;

import java.util.List;

public interface CoachService {

    boolean createCoach(CoachDto coachDto);


    void findCoachByhEmail(String email);

    boolean deleteCoach(Long coachId);

    Coach findCoachById(Long coachId);

    List<Coach> allCoaches();
}
