package com.serdyukov.tagsofttest.dto.fromApiEnpoints;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Data
@AllArgsConstructor
@NoArgsConstructor
@JsonAutoDetect(fieldVisibility = JsonAutoDetect.Visibility.ANY)
@JsonIgnoreProperties(ignoreUnknown = true)
public class RateExMono {
    private int currencyCodeA;
    private int currencyCodeB;
    private Long date;
    private BigDecimal rateBuy;
    private BigDecimal rateSell;

}
