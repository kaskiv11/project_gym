package com.kaskiv.gymProject.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "training")
public class Training {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @Column(name = "title")
    @Size(min=2, message = "Не менше 5 знаків")
    private String title;

    @Column(name = "start_training")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate start;

    @Column(name = "end_training")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate end;

    @ManyToOne
    @JoinColumn(name="coach_id",nullable = false)
    private Coach coach;

    @OneToOne(mappedBy = "training")
    private User user;

}
