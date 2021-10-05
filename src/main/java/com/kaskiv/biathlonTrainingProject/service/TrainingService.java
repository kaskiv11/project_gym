package com.kaskiv.biathlonTrainingProject.service;


import com.kaskiv.biathlonTrainingProject.model.Coach;
import com.kaskiv.biathlonTrainingProject.model.Training;

import java.util.List;

public interface TrainingService {

    boolean addTraining(Coach coach, Training training);

    boolean deleteTraining(Long trainingId);

    Training findTrainingById(Long userId);

    List<Training> allTraining();
}
