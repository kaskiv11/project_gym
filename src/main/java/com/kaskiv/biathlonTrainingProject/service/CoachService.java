package com.kaskiv.biathlonTrainingProject.service;

import com.kaskiv.biathlonTrainingProject.dto.CoachDto;
import com.kaskiv.biathlonTrainingProject.model.Coach;

import java.util.List;

public interface CoachService {

    boolean createCoach(CoachDto coachDto);


    void findCoachByhEmail(String email);

    boolean deleteCoach(Long coachId);

    Coach findCoachById(Long coachId);

    List<Coach> allCoaches();
}
