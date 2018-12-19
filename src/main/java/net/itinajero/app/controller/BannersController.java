package net.itinajero.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/banners")
public class BannersController {
	
	@GetMapping("/index")
	public String mostrarIndex() {
		return "banners/index";
	}

}
