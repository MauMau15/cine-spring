package net.itinajero.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import net.itinajero.app.model.Noticia;
import net.itinajero.app.service.INoticiasService;

@Controller
@RequestMapping("/noticias")
public class NoticiasController {
	
	@Autowired
	private INoticiasService noticiasService;
	
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
		
		noticiasService.guardar(noticia);
		
		return "noticias/formNoticia";
	}
}
