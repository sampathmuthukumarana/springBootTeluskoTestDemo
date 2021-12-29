package com.example.demo;


import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.example.service.AlienService;
import com.example.service.AlienServiceImpl;

@Configuration
public class SpringConfig{
	@Bean
	public AlienService transactionService() {
	    return new AlienServiceImpl();
	}

}
