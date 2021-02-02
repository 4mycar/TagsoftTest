package com.serdyukov.tagsofttest.repository;

import com.serdyukov.tagsofttest.entity.Rate;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import javax.persistence.Tuple;
import java.time.LocalDateTime;
import java.util.List;

@Repository
public interface IRateRepo extends JpaRepository<Rate, Integer> {

    @Query(name = "groupAvgByDays",
            value = "SELECT " +
                    "(SELECT c.alpha_name FROM currencies c WHERE c.id = r.currency_from_id) as curFrom, " +
                    "(SELECT c.alpha_name FROM currencies c WHERE c.id = r.currency_to_id) as curTo, " +
                    "date(r.timestamp) as day, " +
                    "round(AVG(r.rate_buy),2) as rateBuyAvg, " +
                    "round(AVG(r.rate_sell),2) as rateSellAvg " +
                    "FROM rates r " +
                    "WHERE " +
                    "r.timestamp BETWEEN :from AND :to " +
                    "GROUP BY day, curFrom, curTo",
            nativeQuery = true)
    List<Tuple> findAvgRateBetween(
            @Param("from") LocalDateTime from,
            @Param("to") LocalDateTime to);

    @Query(name = "allRatesByDayWithAvg",
            value = "SELECT DISTINCT " +
                    "(SELECT s.name FROM sources s WHERE s.id=r.source_id) as src, " +
                    "(SELECT c.alpha_name FROM currencies c WHERE id = r.currency_from_id) as cur_from, " +
                    "(SELECT c.alpha_name FROM currencies c WHERE id = r.currency_to_id) as cur_to, " +
                    "r.rate_buy, rate_sell, a.avg_buy, a.avg_sell, " +
                    "date(r.timestamp) as day " +
                    "FROM rates r " +
                    "LEFT JOIN " +
                    "(SELECT r.currency_from_id, " +
                    "r.currency_to_id, " +
                    "round(AVG(r.rate_buy),2) as avg_buy, " +
                    "round(AVG(r.rate_sell),2) as avg_sell " +
                    "FROM rates r " +
                    "WHERE date(r.timestamp) = :date " +
                    "GROUP BY r.currency_from_id, r.currency_to_id) a " +
                    "on r.currency_from_id=a.currency_from_id and r.currency_to_id=a.currency_to_id " +
                    "WHERE date(r.timestamp) = :date " +
                    "ORDER BY src, cur_from",
            nativeQuery = true)
    List<Tuple> findAllRatesByDate(
            @Param("date") LocalDateTime date);
}
