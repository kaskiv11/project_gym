package com.kaskiv.biathlonTrainingProject.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.Size;
@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "result")
public class Result {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @Column(name = "name")
    @Size(min=2, message = "Не менше 5 знаків")
    private String name;

    @Column(name = "progress")
    @Size(min=2, message = "Не менше 5 знаків")
    private String progress;

    @ManyToOne
    @JoinColumn(name="user_id",nullable = false)
    private User user;

    public Result(String name, String progress) {
    }
}
