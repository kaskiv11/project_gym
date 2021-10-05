package com.kaskiv.biathlonTrainingProject.service.impl;

import com.kaskiv.biathlonTrainingProject.dao.TrainingDao;
import com.kaskiv.biathlonTrainingProject.model.Coach;
import com.kaskiv.biathlonTrainingProject.model.Training;
import com.kaskiv.biathlonTrainingProject.service.TrainingService;

import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
@Log4j
@Service
public class TrainingServiceImp implements TrainingService {
    @Autowired
    private TrainingDao trainingDao;


    @Override
    public boolean addTraining(Coach coach, Training training) {

        Training trainingFromDB = trainingDao.findByTitle(training.getTitle());
        if (trainingFromDB != null) {
            log.error("Error, training already exists ");
            return false;
        }
        training.setCoach(coach);
        trainingDao.save(training);
        return true;
    }


    @Override
    public boolean deleteTraining(Long trainingId) {
        log.info("Training delete ");
        if (trainingDao.findById(trainingId).isPresent()) {
            trainingDao.deleteById(trainingId);
            return true;
        }
        log.info("Training not deleted ");
        return false;

    }
    @Override
    public Training findTrainingById(Long trainingId) {
        log.info("Find training by id ");
        Optional<Training> userFromDb = trainingDao.findById(trainingId);
        return userFromDb.orElse(new Training());
    }
    @Override
    public List<Training> allTraining() {

        log.info("Find all trainings ");
        return (List<Training>) trainingDao.findAll();
    }

}
