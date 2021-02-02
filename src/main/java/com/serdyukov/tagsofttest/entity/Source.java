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
@Table(name = "sources")
public class Source {

    @Id
    private int id;

    @Column(name = "name")
    private String name;

    @Column(name = "api_path")
    private String apiPath;

}
