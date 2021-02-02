package com.serdyukov.tagsofttest.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Data
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "currencies")
public class Currency {

    @Id
    private int id;

    @Column(name = "alpha_name", nullable = false)
    private String alphaName;

    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "country", nullable = false)
    private String country;

}
