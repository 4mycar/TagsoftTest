package com.serdyukov.tagsofttest.utils;

import com.serdyukov.tagsofttest.service.external.ICurrencyRateProviderService;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
@Slf4j
public class UpdateScheduler {

    private ICurrencyRateProviderService monoRatesService;
    private ICurrencyRateProviderService privatRatesService;
    private ICurrencyRateProviderService NBURatesService;

    @Scheduled(cron = "30 * * * * ?")
    public void updateData() {
        log.info("Updating rates...");
        monoRatesService.saveRates();
        privatRatesService.saveRates();
        NBURatesService.saveRates();
        log.info("Rates updated");
    }

}
