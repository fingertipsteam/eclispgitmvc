package com.mai.sofeware.web;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.alibaba.druid.pool.vendor.SybaseExceptionSorter;
import com.mai.sofeware.model.UserJDBC;
import com.mai.sofeware.service.UserJdbcService;

@Controller
public class UserJdbcController {
	
	@Autowired
	private UserJdbcService userJdbcServce;
	
	@Autowired
	private MessageSource messageSource;
	
	
	
	
	
	@ModelAttribute("userJdbc")
	public UserJDBC getUserJdbc() {
		return new UserJDBC();
	}
	
	@RequestMapping("/jdbcusers")
	public String jdbcUsers(Model model) {
		List<UserJDBC> list = userJdbcServce.findAllUsers();
		
		model.addAttribute("edit",messageSource.getMessage("page.index.edit",null,LocaleContextHolder.getLocale()));
		model.addAttribute("jdbcUserList",list);
		return "user/userList";
	}
	

	/**
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String toAdd(Model model) {
		model.addAttribute("userJdbc",new UserJDBC());
		
		return "user/add";
	}
	
	/**
	 * 
	 * @param redirectAttributes
	 * @param user
	 * @return
	 */
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String add(RedirectAttributes redirectAttributes,@Validated UserJDBC userJdcb,BindingResult result) {
		if(result.hasErrors()) {
			return "user/add";
		}
		try {
			userJdbcServce.createUser(userJdcb);
			redirectAttributes.addFlashAttribute("message","添加成功。");
			
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
		return "redirect:/jdbcusers";
		
	}
	
	
	@RequestMapping(value="/edit/{userId}",method=RequestMethod.POST)
	public String edit(RedirectAttributes redirectAttributes,UserJDBC userJdbc,@PathVariable int userId) {
		try {
			userJdbc.setUserId(userId);
			int i = userJdbcServce.editUser(userJdbc);
				
			redirectAttributes.addFlashAttribute("message","修改成功。");
			
		}catch(Exception e) {
			e.printStackTrace();
			
			System.out.println("修改失败");
			return "error";
			
		}
		
		return "redirect:/jdbcusers";
		
	}
	
	@RequestMapping(value="/edit/{userId}",method=RequestMethod.GET)
	public String toEdit(Model model,@PathVariable Integer userId) {
		UserJDBC userJdbc =  userJdbcServce.getUserById(userId);
		model.addAttribute("userJdbc",userJdbc);
		return "user/edit";
	}
	
	@RequestMapping(value="/delete/{userId}",method=RequestMethod.GET)
	public String delete(RedirectAttributes redirectAttributes,@PathVariable Integer userId) {
		 try {
			 userJdbcServce.delectUser(userId);
			 redirectAttributes.addFlashAttribute("message", "删除成功。");
		 }catch (Exception e) {
			 redirectAttributes.addFlashAttribute("message", "删除失败。");
			 e.printStackTrace();
		 }
		 
		 return "redirect:/jdbcusers";
	}
	
}
