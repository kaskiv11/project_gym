package com.kaskiv.gymProject.dao;



import com.kaskiv.gymProject.model.Category;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoryDao extends CrudRepository<Category,Long> {
    Category findByCategoryName(String nameCategory);
}