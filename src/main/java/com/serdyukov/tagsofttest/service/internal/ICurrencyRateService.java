package com.serdyukov.tagsofttest.service.internal;

import com.serdyukov.tagsofttest.dto.toUser.RateAvgByDate;
import com.serdyukov.tagsofttest.dto.toUser.RateBySource;

import java.time.LocalDateTime;
import java.util.List;

public interface ICurrencyRateService {
    List<RateAvgByDate> getAvgRateBetween(LocalDateTime from, LocalDateTime to);

    List<RateBySource> getRateByDate(LocalDateTime date);
}
