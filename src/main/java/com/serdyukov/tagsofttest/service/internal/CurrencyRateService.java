package com.serdyukov.tagsofttest.service.internal;

import com.serdyukov.tagsofttest.dto.toUser.RateAvgByDate;
import com.serdyukov.tagsofttest.dto.toUser.RateBySource;
import com.serdyukov.tagsofttest.repository.IRateRepo;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

@Slf4j
@AllArgsConstructor
@Service
public class CurrencyRateService implements ICurrencyRateService {

    private IRateRepo rateRepo;

    @Override
    public List<RateAvgByDate> getAvgRateBetween(LocalDateTime from, LocalDateTime to) {
        return rateRepo.findAvgRateBetween(from, to).stream()
                .map(t -> new RateAvgByDate(
                        t.get(0, String.class),
                        t.get(1, String.class),
                        t.get(2, Date.class),
                        t.get(3, BigDecimal.class),
                        t.get(4, BigDecimal.class)
                ))
                .collect(Collectors.toList());
    }

    @Override
    public List<RateBySource> getRateByDate(LocalDateTime date) {
        List<RateBySource> rateBySourceList = rateRepo.findAllRatesByDate(date).stream()
                .map(t -> new RateBySource(
                        t.get(0, String.class),
                        t.get(1, String.class),
                        t.get(2, String.class),
                        t.get(3, BigDecimal.class),
                        t.get(4, BigDecimal.class),
                        t.get(5, BigDecimal.class),
                        t.get(6, BigDecimal.class),
                        t.get(7, Date.class)
                ))
                .collect(Collectors.toList());
        return rateBySourceList;
    }

}
