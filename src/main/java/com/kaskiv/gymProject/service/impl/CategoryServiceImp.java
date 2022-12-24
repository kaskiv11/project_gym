package com.kaskiv.gymProject.service.impl;

import com.kaskiv.gymProject.dao.CategoryDao;
import com.kaskiv.gymProject.model.Category;
import com.kaskiv.gymProject.model.Coach;
import com.kaskiv.gymProject.service.CategoryService;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
@Log4j
@Service
public class CategoryServiceImp implements CategoryService {
    @Autowired
    private CategoryDao categoryDao;

    @Override
    public boolean createCategory(Category category) {
        log.info("Create category");
        Category categoryBD =categoryDao.findByCategoryName(category.getCategoryName());
        if (categoryBD != null) {
            return false;
        }

        List<Coach> coaches = new ArrayList<>() ;
        category.setCoaches(coaches);

        categoryDao.save(category);
        return true;
    }

    @Override
    public boolean deleteCategoryId(Long categoryId) {
        log.info("Delete category by id");
        if (categoryDao.findById(categoryId).isPresent()) {
            categoryDao.deleteById(categoryId);
            return true;
        }
        return false;
    }
    @Override
    public void findCategoryByCategoryName(String categoryName) {
        categoryDao.findByCategoryName(categoryName);
    }
    @Override
    public void findCategoryById(Long id){
        categoryDao.findById(id);
    }

    @Override
    public List<Category> allCategory() {
        return (List<Category>) categoryDao.findAll();
    }
}
