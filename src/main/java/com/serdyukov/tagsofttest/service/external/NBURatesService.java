package com.serdyukov.tagsofttest.service.external;

import com.serdyukov.tagsofttest.dto.fromApiEnpoints.RateExNBU;
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
public class NBURatesService implements ICurrencyRateProviderService {

    private WebClient webClient;
    private ICurrencyRepo currencyRepo;
    private IRateRepo rateRepo;
    private ISourceRepo sourceRepo;

    @Override
    public void saveRates() {
        Source source = sourceRepo.findById(3).get();
        List<RateExNBU> rateExNBUListList = webClient
                .get()
                .uri(sourceRepo.findById(3).get().getApiPath())
                .retrieve()
                .onStatus(HttpStatus::is4xxClientError, clientResponse -> handleErrorResponse(clientResponse))
                .onStatus(HttpStatus::is5xxServerError, clientResponse -> handleErrorResponse(clientResponse))
                .bodyToFlux(RateExNBU.class)
                .collectList()
                .block()
                .stream()
                .filter(dto -> dto.getRate() != null)
                .collect(Collectors.toList());

        for (RateExNBU dto : rateExNBUListList) {
            Rate rate = new Rate();
            rate.setCurrencyFrom(currencyRepo.findById(dto.getR030()).get());
            rate.setCurrencyto(currencyRepo.findById(980).get());
            rate.setRateBuy(dto.getRate());
            rate.setRateSell(dto.getRate());
            rate.setRateAvg(dto.getRate());
            rate.setTimestamp(LocalDateTime.now());
            rate.setSource(source);
            rateRepo.save(rate);
        }
    }
}
