package com.kaskiv.biathlonTrainingProject.service;


import com.kaskiv.biathlonTrainingProject.model.Result;
import com.kaskiv.biathlonTrainingProject.model.User;

import java.util.List;

public interface ResultService {

    boolean addResult(User user, Result result);

    boolean deleteResult(Long resultId);

    Result findResultById(Long resultId);

    List<Result> allResults();
}
