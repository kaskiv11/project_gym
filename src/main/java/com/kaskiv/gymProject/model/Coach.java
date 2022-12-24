package com.kaskiv.gymProject.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "coach")
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)

public class Coach extends AbstractUser{
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;


    @Column(name = "description")
    private String description;


    @Column(name = "awards")
    private String awards;

    @ManyToMany(mappedBy = "coaches")
    List<User> users;

    @OneToMany(mappedBy = "coach", cascade = CascadeType.ALL,orphanRemoval = true)
    private List<Training> trainings;


    @ManyToOne
    @JoinColumn(name="category_id",nullable = false)
    private Category category;

}
