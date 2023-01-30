package com.poly.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.persistence.PreUpdate;
import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.poly.dao.AccountDAO;
import com.poly.entity.Account;
import com.poly.service.MailerService;
import com.poly.service.ParamService;
import com.poly.service.SessionService;

@Controller
public class AccountController {
	@Autowired
	AccountDAO dao;
	@Autowired
	SessionService session;
	@Autowired
	ParamService paramService;
	@Autowired
	ServletContext app;
	@Autowired
	MailerService mailer;
	@Autowired


	@GetMapping("/account/login")
	public String login() {
		return "account/login";
	}

	@PostMapping("/account/login")
	public String login(Model model, @RequestParam("username") String username,
			@RequestParam("password") String password) {
		Account account = dao.findById(username).orElse(null);
		try {
			Account user = dao.getOne(username);
			if (!user.getPassword().equals(password)) {
				model.addAttribute("message", "Invalid password");
			} else {
				String uri = session.get("security-uri");
				if (uri != null) {
					return "redirect:" + uri;
				} else {
					if (user.isAdmin()) {
						session.set("username", user.getUsername());
						model.addAttribute("message", "Login successfylly");
						return "redirect:/category/index";
					} else {
						session.set("username", user.getUsername());
						model.addAttribute("message", "Login successfylly");
						return "redirect:/home/index";
					}
				}
			}
		} catch (Exception e) {
			model.addAttribute("message", "Invalid username");
		}
		return "account/login";
	}

	// xét quyền truy cập để hiển thị lại hệ thống menu
	@GetMapping("/logout/{username}")
	public String logout(Model model, @PathVariable("username") String username) {
		Account ac = dao.getOne(username);
		if (ac.isAdmin()) {
			session.set("username", ac.getUsername());
			model.addAttribute("message", "Login successfylly");
			return "redirect:/category/index";
		} else {
			session.set("username", ac.getUsername());
			model.addAttribute("message", "Login successfylly");
			return "redirect:/home/index";
		}
	}

	@RequestMapping("/accountuser/{username}")
	public String accountuser(Model model, @PathVariable("username") String username) {
		Account ac = dao.getOne(username);
		if (ac.isAdmin()) {
			session.set("username", ac.getUsername());
			session.set("password", ac.getPassword());
			session.set("fullname", ac.getFullname());
			session.set("email", ac.getEmail());
			session.set("photo", ac.getPhoto());
			model.addAttribute("message", session);
			return "/account/accountuser";
		} else {
			session.set("username", ac.getUsername());
			session.set("password", ac.getPassword());
			session.set("fullname", ac.getFullname());
			session.set("email", ac.getEmail());
			session.set("photo", ac.getPhoto());
			model.addAttribute("message", session);
			return "/account/accountuser";
		}
	}

	// sửa thông tin cá nhân
	@RequestMapping("thongtincanhann")
	public String thongtincanhan(Model model, @RequestParam("username") String username,
			@RequestParam("password") String passsword, @RequestParam("email") String email,
			@RequestParam("fullname") String fullname) throws IOException {
		Account ac = dao.getOne(username);
		ac.setEmail(email);
		ac.setFullname(fullname);
		ac.setPassword(passsword);
		dao.save(ac);
		session.set("username", ac.getUsername());
		session.set("password", ac.getPassword());
		session.set("fullname", ac.getFullname());
		session.set("email", ac.getEmail());
		session.set("photo", ac.getPhoto());
		model.addAttribute("message", session);
		return "/account/accountuser";
	}

	// quenmk
	@RequestMapping("quenmk")
	public String quenmk() {
		return "/account/quenmk";
	}

	@RequestMapping("quenmktv")
	public String quenmktv(Model model, @RequestParam("username") String username) {
		if (!dao.existsById(username)) {
			model.addAttribute("message", "Tài khoản này không tồn tại!");
		} else {
			Account ac = dao.getOne(username); 
			String pass = ac.getPassword();
			String email = ac.getEmail();
			try {
				mailer.queue(email, "Lấy lại mật khẩu", pass);
				model.addAttribute("message", "Chúng tôi đã gửi mật khẩu vào email" + " " + email + " " + "của bạn");
				return "/account/quenmk";
			} catch (Exception e) {
				// TODO: handle exception
				return e.getMessage();
			}
		}
		return "/account/quenmk";
	}
	@RequestMapping("dangKi")
	public String Dangki() {
		return "/account/dangKi";
	}
}
