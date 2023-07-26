package com.cts.ecart.controller;

import org.springframework.amqp.core.Queue;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class Sender {
	@Autowired
	private RabbitTemplate  template;
	
	public Sender() {
		template=new RabbitTemplate();
	}
	
	@Bean
	public Queue f1() {
		Queue q1=new Queue("Q1", true);
		return q1;
	}
	@RequestMapping("/s1")
	@ResponseBody
	public String sendMessage() {
		template.convertAndSend("Q1", "Final test message...");
		return "Message Sent";
	}
	

}
