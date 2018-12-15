package net.itinajero.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import net.itinajero.app.model.Noticia;

@Controller
@RequestMapping("/noticias")
public class NoticiasController {
	
	@GetMapping(value="/create")
	public String crear() {
		return "noticias/formNoticia";
	}
	
	@PostMapping(value="/save")
	public String guardar(@RequestParam("tituloNoticia") String titulo, @RequestParam("statusNoticia") String status, @RequestParam("contenidoNoticia") String contenido) {
		Noticia noticia = new Noticia();
		
		noticia.setTitulo(titulo);
		noticia.setEstatus(status);
		noticia.setContenido(contenido);
		
		return "noticias/formNoticia";
	}
}
