package net.itinajero.app.service;

import java.util.List;

import net.itinajero.app.model.Banner;

public interface IBannersService {
	List<Banner> buscarTodos();
	void insertarBanner(Banner banner);
}
