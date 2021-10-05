package com.kaskiv.biathlonTrainingProject.dao;



import com.kaskiv.biathlonTrainingProject.model.Plan;
import com.kaskiv.biathlonTrainingProject.model.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PlanDao extends CrudRepository<Plan,Long> {
    Plan findByUser(User user);
}
