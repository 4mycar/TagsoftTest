package com.serdyukov.tagsofttest.repository;

import com.serdyukov.tagsofttest.entity.Source;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface ISourceRepo extends JpaRepository<Source, Integer> {

    Optional<Source> findById(int id);
}