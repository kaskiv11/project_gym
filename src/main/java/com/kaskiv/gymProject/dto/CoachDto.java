package com.kaskiv.gymProject.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Transient;
import javax.validation.constraints.Size;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class CoachDto {

    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @Column(name = "first_name")
    private String firstName;
    @Column(name = "last_name")
    private String lastName;

    @Column(name = "user_name")
    private String userName;

    @Column(name = "email")
    @Size(min=2, message = "Не менше 5 знаків")
    private String email;

    @Column(name = "password")
    @Size(min=2, message = "Не менше 5 знаків")
    private String password;

    @Transient
    private String passwordConfirm;

    @Column(name = "age")
    private Double age;

    @Column(name = "phone")
    private String phone;

    @Column(name = "address")
    private String address;
    @Column(name = "description")
    private String description;


    @Column(name = "awards")
    private String awards;

    private Long  categoryId;


    private String categoryName;
}
