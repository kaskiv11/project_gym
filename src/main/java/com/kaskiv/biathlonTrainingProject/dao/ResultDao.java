package com.kaskiv.biathlonTrainingProject.dao;


import com.kaskiv.biathlonTrainingProject.model.Result;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ResultDao extends CrudRepository<Result,Long> {
    Result findByName(String name);

}
