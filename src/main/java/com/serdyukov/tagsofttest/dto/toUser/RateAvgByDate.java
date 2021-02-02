package com.serdyukov.tagsofttest.dto.toUser;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.util.Date;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class RateAvgByDate {
    private String curFrom;
    private String curTo;
    private Date day;
    private BigDecimal rateBuyAvg;
    private BigDecimal rateSellAvg;
}
