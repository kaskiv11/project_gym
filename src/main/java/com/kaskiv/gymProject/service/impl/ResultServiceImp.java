package com.kaskiv.gymProject.service.impl;

import com.kaskiv.gymProject.dao.ResultDao;
import com.kaskiv.gymProject.model.Result;
import com.kaskiv.gymProject.model.User;
import com.kaskiv.gymProject.service.ResultService;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
@Log4j
@Service
public class ResultServiceImp implements ResultService {
    @Autowired
    private ResultDao resultDao;


    @Override
    public boolean addResult(User user,Result result) {
        result.setUser(user);
        resultDao.save(result);
        log.info("Results add");
        return true;
    }
    @Override
    public boolean deleteResult(Long resultId) {
        if (resultDao.findById(resultId).isPresent()) {
            resultDao.deleteById(resultId);
            log.info("Results delete to id");
            return true;

        }
        log.info("Results delete to id");
        return false;
    }

    @Override
    public Result findResultById(Long resultId) {
        log.info("Result find by id");
        Optional<Result> resultFromDb = resultDao.findById( resultId);
        return resultFromDb.orElse(new Result());
    }
    @Override
    public List<Result> allResults() {
        log.info("All results");
        return (List<Result>) resultDao.findAll();
    }

}
