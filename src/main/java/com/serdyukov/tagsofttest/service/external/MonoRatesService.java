package com.serdyukov.tagsofttest.service.external;

import com.serdyukov.tagsofttest.dto.fromApiEnpoints.RateExMono;
import com.serdyukov.tagsofttest.entity.Rate;
import com.serdyukov.tagsofttest.entity.Source;
import com.serdyukov.tagsofttest.repository.ICurrencyRepo;
import com.serdyukov.tagsofttest.repository.IRateRepo;
import com.serdyukov.tagsofttest.repository.ISourceRepo;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;

import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.Collectors;

@Slf4j
@AllArgsConstructor
@Service
public class MonoRatesService implements ICurrencyRateProviderService {


    private WebClient webClient;
    private ICurrencyRepo currencyRepo;
    private IRateRepo rateRepo;
    private ISourceRepo sourceRepo;

    @Override
    public void saveRates() {
        Source source = sourceRepo.findById(1).get();
        List<RateExMono> rateExMonoList = webClient
                .get()
                .uri(source.getApiPath())
                .retrieve()
                .onStatus(HttpStatus::is4xxClientError, clientResponse -> handleErrorResponse(clientResponse))
                .onStatus(HttpStatus::is5xxServerError, clientResponse -> handleErrorResponse(clientResponse))
                .bodyToFlux(RateExMono.class)
                .collectList()
                .block()
                .stream()
                .filter(dto -> dto.getRateBuy() != null && dto.getRateSell() != null)
                .collect(Collectors.toList());

        for (RateExMono dto : rateExMonoList) {
            Rate rate = new Rate();
            rate.setCurrencyFrom(currencyRepo.findById(dto.getCurrencyCodeA()).get());
            rate.setCurrencyto(currencyRepo.findById(dto.getCurrencyCodeB()).get());
            rate.setRateBuy(dto.getRateBuy());
            rate.setRateSell(dto.getRateSell());
            rate.setRateAvg(getAvg(dto.getRateBuy(), dto.getRateSell()));
            rate.setSource(source);
            rate.setTimestamp(LocalDateTime.now());
            rateRepo.save(rate);
        }

    }
}
