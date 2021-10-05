package com.kaskiv.biathlonTrainingProject.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "plan")
public class Plan {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @Column( name = "name_plan")
    private String namePlan;

    @Column( name = "purpose")
    private String purpose;

    @ManyToOne
    @JoinColumn(name="user_id",nullable = false)
    private User user;
}
