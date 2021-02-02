package com.serdyukov.tagsofttest.service.external;

import com.serdyukov.tagsofttest.exeption.RestException;
import org.springframework.web.reactive.function.client.ClientResponse;
import reactor.core.publisher.Mono;

import java.math.BigDecimal;


public interface ICurrencyRateProviderService {
    void saveRates();

    default Mono<RuntimeException> handleErrorResponse(ClientResponse clientResponse) {
        Mono<String> errorResponse = clientResponse.bodyToMono(String.class);
        return errorResponse.flatMap((message) -> {
            throw new RestException(message);
        });
    }

    default BigDecimal getAvg(BigDecimal buy, BigDecimal sell) {
        return buy.add(sell).divide(new BigDecimal("2"));
    }
}
