package net.itinajero.app.service;

import java.util.List;

import net.itinajero.app.model.Pelicula;

public interface IPeliculasService {
	List<Pelicula> buscarTodas();
	Pelicula buscarPorId(int idPelicula);
	void crearPelicula(Pelicula pelicula);
}
