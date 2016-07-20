package com.ipuro.controller;

import java.util.List;
import java.io.IOException;
import java.io.InputStream;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamSource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;





import org.springframework.mail.SimpleMailMessage;


import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;


import org.springframework.web.servlet.ModelAndView;


import com.ipuro.model.Category;
import com.ipuro.model.Contactform;
import com.ipuro.model.Newsletter;
import com.ipuro.service.ContactService;
import com.ipuro.service.NewsletterService;

@Controller
public class ContactController
{
	@Autowired
	   private JavaMailSender mailSender;
	@Autowired
	ContactService contactservice;
	@Autowired
	NewsletterService newsletterService;
	
	
@RequestMapping("contactus.html")
public String contactform(ModelMap map)
{
	map.addAttribute("contactcontainer");
	return "ContactUs";
}
@RequestMapping("contactUs.html")
ModelAndView contactdata(@ModelAttribute("contactcontainer")Contactform contactform)
{
	contactservice.contactdata(contactform);
	return new ModelAndView("redirect:contactus.html");
}
@RequestMapping("ViewQueries.html")
ModelAndView ViewQueries()
{
	List<Contactform> list=contactservice.ViewQueries();
	return new ModelAndView("Viewqueries","list",list);
}
@RequestMapping("replyt.html")
public ModelAndView replyt()
{
		
	return new ModelAndView("Sendmessage");
}
@RequestMapping("sendemail.html") 
public ModelAndView doSendEmail(HttpServletRequest request) {
    // takes input from e-mail form
    String recipientAddress = request.getParameter("email");
    System.out.println();
    String subject = request.getParameter("subject");
    String message = request.getParameter("message");     
    // prints debug info
    System.out.println("To: " + recipientAddress);
    System.out.println("Subject: " + subject);
    System.out.println("Message: " + message);
     
    // creates a simple e-mail object
    SimpleMailMessage email = new SimpleMailMessage();
    email.setTo(recipientAddress);
    email.setSubject(subject);
    email.setText(message);
   mailSender.send(email);
     
    // forwards to the view named "Result"
    return new ModelAndView("redirect:ViewQueries.html");
}
@RequestMapping("newsletterm.html")
public ModelAndView newsletter(ModelMap map)
{
	map.addAttribute("newslettercontainer");
	List<Newsletter> list=newsletterService.Viewsubscriber();
	return new ModelAndView("sendnewsletter","list", list);
}
@RequestMapping("sendnewsletter.html") 
public ModelAndView dosendnewsletter(HttpServletRequest request,final @RequestParam CommonsMultipartFile attachFile ) {
    // takes input from e-mail form
	
   final String[] recipientAddress = request.getParameterValues("email");
    
    
    final String subject = request.getParameter("subject");
    final String message = request.getParameter("message");     
    System.out.println("attachFile: " + attachFile.getOriginalFilename());
    /*SimpleMailMessage email = new SimpleMailMessage();
   
   
    	 email.setTo(recipientAddress[0]);
    	 email.setCc(recipientAddress);
    	 email.setSubject(subject);
    	    email.setText(message);
 
   mailSender.send(email);
     */
    // forwards to the view named "Result"
    mailSender.send(new MimeMessagePreparator() {

		@Override
		public void prepare(MimeMessage mimeMessage) throws Exception {
			MimeMessageHelper messageHelper = new MimeMessageHelper(
					mimeMessage, true, "UTF-8");
			messageHelper.setTo(recipientAddress);
			messageHelper.setSubject(subject);
			messageHelper.setText(message);
			
			// determines if there is an upload file, attach it to the e-mail
			String attachName = attachFile.getOriginalFilename();
			if (!attachFile.equals("")) {

				messageHelper.addAttachment(attachName, new InputStreamSource() {
					
					@Override
					public InputStream getInputStream() throws IOException {
						return attachFile.getInputStream();
					}
				});
			}
			
		}

	});
    
    
    
    
    
    
    
    
    return new ModelAndView("redirect:newsletterm.html");
}
}
