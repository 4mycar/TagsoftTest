package com.serdyukov.tagsofttest.controllers;

import com.serdyukov.tagsofttest.dto.toUser.RateAvgByDate;
import com.serdyukov.tagsofttest.dto.toUser.RateBySource;
import com.serdyukov.tagsofttest.service.internal.ICurrencyRateService;
import io.swagger.annotations.Api;
import lombok.AllArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDate;
import java.util.List;

@RestController
@AllArgsConstructor
@Api(tags = "Provide currency rates")
@RequestMapping("/currency/rates")
public class RatesController {

    private ICurrencyRateService currencyRateService;

    @GetMapping(value = "/all", produces = MediaType.APPLICATION_JSON_VALUE)
    List<RateBySource> getRatesBySourceByDate(@RequestParam(name = "date") @DateTimeFormat(pattern = "yyyyMMdd") LocalDate date) {
        List<RateBySource> rateBySourceList = currencyRateService.getRateByDate(date.atStartOfDay());
        return rateBySourceList;
    }

    @GetMapping(value = "/avg/period", produces = MediaType.APPLICATION_JSON_VALUE)
    List<RateAvgByDate> getAvgMarketRatesByDateBetween(@RequestParam(name = "from") @DateTimeFormat(pattern = "yyyyMMdd") LocalDate from,
                                                       @RequestParam(name = "to") @DateTimeFormat(pattern = "yyyyMMdd") LocalDate to) {
        List<RateAvgByDate> avgRateWithDateList = currencyRateService.getAvgRateBetween(
                from.atStartOfDay(), to.atTime(23, 59, 59));
        return avgRateWithDateList;
    }

}
