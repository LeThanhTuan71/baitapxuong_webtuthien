package com.poly.controller;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.poly.bean.MailInfo;
import com.poly.service.MailerService;

@Controller
public class MailerController {
	@Autowired
	MailerService mailer;


	@RequestMapping("/mailer/mailer")
	public String demo3(Model model) {

		
		MailInfo mailinfo = new MailInfo();
		model.addAttribute("mailinfo", mailinfo);
		return "mail/mail";
	}
	
	//@ResponseBody
	@RequestMapping("/mailer/send")
	public String send(Model model, MailInfo mailinfo) {
	
		mailer.queue(mailinfo.getTo(), mailinfo.getSubject(), mailinfo.getBody());
		model.addAttribute("mail", mailinfo);
		return "mail/send";
	}
}
