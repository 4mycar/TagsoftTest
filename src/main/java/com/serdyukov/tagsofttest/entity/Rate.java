package com.serdyukov.tagsofttest.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.math.BigDecimal;
import java.time.LocalDateTime;

@Data
@Entity
@NoArgsConstructor
@Table(name = "rates")
public class Rate {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @ManyToOne(cascade = {CascadeType.MERGE, CascadeType.PERSIST}, fetch = FetchType.EAGER)
    @JoinColumn(name = "currency_from_id", referencedColumnName = "id", nullable = false)
    private Currency currencyFrom;

    @ManyToOne(cascade = {CascadeType.MERGE, CascadeType.PERSIST}, fetch = FetchType.EAGER)
    @JoinColumn(name = "currency_to_id", referencedColumnName = "id", nullable = false)
    private Currency currencyto;

    @ManyToOne(cascade = {CascadeType.MERGE, CascadeType.PERSIST}, fetch = FetchType.LAZY)
    @JoinColumn(name = "source_id", referencedColumnName = "id", nullable = false)
    private Source source;

    @Column(name = "rate_buy")
    private BigDecimal rateBuy;

    @Column(name = "rate_sell")
    private BigDecimal rateSell;

    @Column(name = "rate_avg")
    private BigDecimal rateAvg;

    @Column(name = "timestamp", nullable = false)
    private LocalDateTime timestamp;

}
