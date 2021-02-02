package com.serdyukov.tagsofttest.dto.toUser;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class RateBySource {
    private String source;
    private String curFrom;
    private String curTo;
    private BigDecimal rateBuy;
    private BigDecimal rateSell;
    private BigDecimal marketRateBuyAvg;
    private BigDecimal marketRateSellAvg;
    private Date day;
}
