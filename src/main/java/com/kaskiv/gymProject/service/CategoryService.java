package com.kaskiv.gymProject.service;


import com.kaskiv.gymProject.model.Category;

import java.util.List;

public interface CategoryService {
    boolean createCategory(Category category);

    boolean deleteCategoryId(Long categoryId);

    void findCategoryByCategoryName(String categoryName);

    void findCategoryById(Long id);

    List<Category> allCategory();
}
