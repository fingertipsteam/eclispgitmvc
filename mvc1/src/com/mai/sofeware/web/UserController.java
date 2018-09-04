/**
 * COPYRIGHT (C) 2017 BY Mai. ALL RIGHTS RESERVED.
 */
package com.mai.sofeware.web;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mai.sofeware.model.User;

import com.mai.sofeware.service.IUserService;


/**
 * 类的描述
 *
 * @author Mai
 * @since 1.0
 */


//@Controller
/*public class UserController {
	
	
	@Autowired
	private IUserService userService;
	
	@Autowired
	private LocaleResolver localeResolver;
	
	@Autowired
	private MessageSource messageSource;
	
	@ModelAttribute("user")
	public User getUser() {
		return new User();
	}
	
	
	
	
	
	@RequestMapping("/changeLocale")
	public String changeLocale(HttpServletRequest request,HttpServletResponse response,String localeType) {
		if("en_US".equals(localeType)) {
			localeResolver.setLocale(request, response, Locale.US);
		}else if("zh_CN".equals(localeType)) {
			localeResolver.setLocale(request, response, Locale.CHINA);
		}
		return "redirect:/users";
	}
	
	
	@RequestMapping("/users")
	public String users(Model model) {
		List<User> list = userService.findAllUsers();
		
		model.addAttribute("edit",messageSource.getMessage("page.index.edit",null,LocaleContextHolder.getLocale()));
		model.addAttribute("jdbcUserList",list);
		return "user/userList";
	}
	
	*//**
	 * 
	 * @param model
	 * @return
	 *//*
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String toAdd(Model model) {
		model.addAttribute("user",new User());
		
		return "user/add";
	}
	
	*//**
	 * 
	 * @param redirectAttributes
	 * @param user
	 * @return
	 *//*
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String add(RedirectAttributes redirectAttributes,@Validated User user,BindingResult result) {
		if(result.hasErrors()) {
			return "user/add";
		}
		try {
			userService.createUser(user);
			redirectAttributes.addFlashAttribute("message","添加成功。");
			
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
		return "redirect:/users";
		
	}
	
	@RequestMapping(value="/edit/{id}",method=RequestMethod.POST)
	public String edit(RedirectAttributes redirectAttributes,User user,@PathVariable Integer id) {
		try {
			user.setId(id);
			userService.editUser(user);
			redirectAttributes.addFlashAttribute("message","修改成功。");
		}catch(Exception e) {
			e.printStackTrace();
			return "error";
		}
		
		return "redirect:/users";
		
	}
	
	@RequestMapping(value="/edit/{id}",method=RequestMethod.GET)
	public String toEdit(Model model,@PathVariable Integer id) {
		User user =  userService.getUserById(id);
		model.addAttribute("user",user);
		return "user/edit";
	}
	
	@RequestMapping(value="/delete/{id}",method=RequestMethod.GET)
	public String delete(RedirectAttributes redirectAttributes,@PathVariable Integer id) {
		 try {
			 userService.delete(id);
			 redirectAttributes.addFlashAttribute("message", "删除成功。");
		 }catch (Exception e) {
			 redirectAttributes.addFlashAttribute("message", "删除失败。");
			 e.printStackTrace();
		 }

		 return "redirect:/users";
	}
	
}*/

