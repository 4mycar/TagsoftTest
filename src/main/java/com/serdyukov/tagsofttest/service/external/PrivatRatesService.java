package com.serdyukov.tagsofttest.service.external;

import com.serdyukov.tagsofttest.dto.fromApiEnpoints.RateExPrivat;
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
public class PrivatRatesService implements ICurrencyRateProviderService {

    private WebClient webClient;
    private ICurrencyRepo currencyRepo;
    private IRateRepo rateRepo;
    private ISourceRepo sourceRepo;


    @Override
    public void saveRates() {
        Source source = sourceRepo.findById(2).get();
        List<RateExPrivat> rateExPrivatList = webClient
                .get()
                .uri(source.getApiPath())
                .retrieve()
                .onStatus(HttpStatus::is4xxClientError, clientResponse -> handleErrorResponse(clientResponse))
                .onStatus(HttpStatus::is5xxServerError, clientResponse -> handleErrorResponse(clientResponse))
                .bodyToFlux(RateExPrivat.class)
                .collectList()
                .block()
                .stream()
                .filter(dto -> dto.getBuy() != null && dto.getSale() != null)
                .collect(Collectors.toList());

        for (RateExPrivat dto : rateExPrivatList) {
            Rate rate = new Rate();
            if (dto.getCcy().equals("RUR")) {
                dto.setCcy("RUB");
            } // Privat bug fixing
            rate.setCurrencyFrom(currencyRepo.findByAlphaNameIgnoreCase(dto.getCcy()).get());
            rate.setCurrencyto(currencyRepo.findByAlphaNameIgnoreCase(dto.getBase_ccy()).get());
            rate.setRateBuy(dto.getBuy());
            rate.setRateSell(dto.getSale());
            rate.setRateAvg(getAvg(dto.getBuy(), dto.getSale()));
            rate.setTimestamp(LocalDateTime.now());
            rate.setSource(source);
            rateRepo.save(rate);
        }
    }
}
