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
public class RateExNBU {
    private int r030;
    private String txt;
    private BigDecimal rate;
    private String cc;
    private String exchangedate;

}

