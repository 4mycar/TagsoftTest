package com.serdyukov.tagsofttest.controllers;

import com.serdyukov.tagsofttest.service.external.ICurrencyRateProviderService;
import io.swagger.annotations.Api;
import lombok.AllArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@AllArgsConstructor
@Api(tags = "Update rates from external services")
@RequestMapping("/external")
public class UpdateController {

    private ICurrencyRateProviderService monoRatesService;
    private ICurrencyRateProviderService privatRatesService;
    private ICurrencyRateProviderService NBURatesService;

    @PostMapping(value = "/update", produces = MediaType.APPLICATION_JSON_VALUE)
    ResponseEntity<Object> saveRatesFromExternalServices() {
        monoRatesService.saveRates();
        privatRatesService.saveRates();
        NBURatesService.saveRates();
        return ResponseEntity.ok().build();
    }


}
