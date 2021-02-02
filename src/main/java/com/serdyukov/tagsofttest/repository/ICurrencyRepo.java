package com.serdyukov.tagsofttest.repository;

import com.serdyukov.tagsofttest.entity.Currency;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface ICurrencyRepo extends JpaRepository<Currency, Integer> {

    Optional<Currency> findById(int id);

    Optional<Currency> findByAlphaNameIgnoreCase(String alphaName);

}
