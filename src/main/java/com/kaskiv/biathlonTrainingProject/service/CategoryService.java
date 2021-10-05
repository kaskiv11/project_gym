package com.kaskiv.biathlonTrainingProject.service;


import com.kaskiv.biathlonTrainingProject.model.Category;

import java.util.List;

public interface CategoryService {
    boolean createCategory(Category category);

    boolean deleteCategoryId(Long categoryId);

    void findCategoryByCategoryName(String categoryName);

    void findCategoryById(Long id);

    List<Category> allCategory();
}
