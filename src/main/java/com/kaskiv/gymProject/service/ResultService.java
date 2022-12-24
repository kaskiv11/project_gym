package com.kaskiv.gymProject.service;


import com.kaskiv.gymProject.model.Result;
import com.kaskiv.gymProject.model.User;

import java.util.List;

public interface ResultService {

    boolean addResult(User user, Result result);

    boolean deleteResult(Long resultId);

    Result findResultById(Long resultId);

    List<Result> allResults();
}
