package net.itinajero.app.service;

import org.springframework.stereotype.Service;

import net.itinajero.app.model.Noticia;

@Service
public class NoticiasService implements INoticiasService{

	@Override
	public void guardar(Noticia noticia) {
		// TODO Auto-generated method stub
		System.out.println(noticia);
	}
	
}
