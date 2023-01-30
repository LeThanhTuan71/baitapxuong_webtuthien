package com.poly.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.bean.Item;
import com.poly.dao.AccountDAO;
import com.poly.dao.ProductDAO;
import com.poly.entity.Account;
import com.poly.entity.Product;
import com.poly.service.SessionService;
import com.poly.service.ShoppingCartService;

@Controller
public class ShoppingCartController {
	@Autowired
	ShoppingCartService cart; 
	@Autowired
	SessionService session;
	@Autowired
	AccountDAO accountDao;
	
//<<<<<<< HEAD
	@Autowired
	ProductDAO productDao;



	
	@RequestMapping("/cart/view")
	public String view(Model model) {
		model.addAttribute("Total", cart.getAmount());
		model.addAttribute("cart", cart);
		return "cart/index"; }

	
	@RequestMapping("/cart/chitiet/{id}")
	public String chitiet(@PathVariable("id") Integer id, Model model) 
	{
		List<Product> PR = productDao.product(id);
		model.addAttribute("items",PR);
		return "/home/xemchitiet";
	}

}