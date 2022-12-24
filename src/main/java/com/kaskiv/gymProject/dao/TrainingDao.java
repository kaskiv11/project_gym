package com.kaskiv.gymProject.dao;


import com.kaskiv.gymProject.model.Training;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TrainingDao extends CrudRepository<Training,Long> {
    List<Training> findTrainingByTitle(String title);
    Training  findByTitle(String title);

}
