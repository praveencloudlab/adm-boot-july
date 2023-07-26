package com.cts.ecart.controller;

import org.springframework.amqp.core.Queue;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;

@Controller
public class Receiver {
	
	@Bean
	public Queue f1() {
		Queue q1=new Queue("Q1", true);
		return q1;
	}
	
	
	
	@RabbitListener(queues = "Q1")
	public void readMessage(String msg) {
		System.out.println("===================================");
		System.out.println("Receiver Service:: "+msg);
		System.out.println("===================================");

	}

}
