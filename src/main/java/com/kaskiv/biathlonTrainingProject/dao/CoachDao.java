package com.kaskiv.biathlonTrainingProject.dao;


import com.kaskiv.biathlonTrainingProject.model.Coach;
import com.kaskiv.biathlonTrainingProject.model.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CoachDao extends CrudRepository<Coach,Long> {
    Coach findCoachByEmail(String email);

    Coach findByUserName(String userCoach);

    List<Coach> findCoachById(Long id);
    Coach findByPassword( String password);
}
