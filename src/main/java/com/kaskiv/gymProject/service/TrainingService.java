package com.kaskiv.gymProject.service;


import com.kaskiv.gymProject.model.Coach;
import com.kaskiv.gymProject.model.Training;

import java.util.List;

public interface TrainingService {

    boolean addTraining(Coach coach, Training training);

    boolean deleteTraining(Long trainingId);

    Training findTrainingById(Long userId);

    List<Training> allTraining();
}
