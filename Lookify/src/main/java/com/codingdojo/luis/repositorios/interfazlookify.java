package com.codingdojo.luis.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.luis.modelos.Cancion;


public interface interfazlookify extends CrudRepository<Cancion, Long> {
	 List<Cancion> findAll();
	 
	 List<Cancion> findByArtist(String artist);
	 
	 List<Cancion> findTop10ByOrderByRatingDesc();
	 

}
