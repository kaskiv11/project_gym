package com.kaskiv.gymProject.dao;



import com.kaskiv.gymProject.model.Plan;
import com.kaskiv.gymProject.model.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PlanDao extends CrudRepository<Plan,Long> {
    Plan findByUser(User user);
}
