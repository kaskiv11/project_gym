package com.kaskiv.gymProject.dao;


import com.kaskiv.gymProject.model.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao extends CrudRepository<User,Long> {
    User findUserByEmail(String email);
    User findByUserName(String userName);
    User findUserByUserName(String userName);
    User findByPassword( String password);

    User deleteUserByPhone(String phone);
    User deleteUserByEmail(String email);
    User deleteUserByLastName(String lastName);
    User deleteUserById(Long id);

    User findUserById(Long id);
    User findUserByLastName(String surname);
    User findUserByPhone(String phone);

}
