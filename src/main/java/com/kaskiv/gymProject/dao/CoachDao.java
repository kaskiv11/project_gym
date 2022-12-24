package com.kaskiv.gymProject.dao;


import com.kaskiv.gymProject.model.Coach;
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
