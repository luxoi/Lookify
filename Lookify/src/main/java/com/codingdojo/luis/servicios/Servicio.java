package com.codingdojo.luis.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.luis.modelos.Cancion;
import com.codingdojo.luis.repositorios.interfazlookify;

@Service
public class Servicio {
	@Autowired
	private interfazlookify repolook;
	
	public Cancion saveSong(Cancion Song) {
		return repolook.save(Song);
	}
	public Cancion findSong(Long id){
	    return repolook.findById(id).orElse(null);
	}
	public void deleteSong(Long id) {
		repolook.deleteById(id);
	}
	public List<Cancion> findSongs() {
		return repolook.findAll();
	}
	public List<Cancion> findTop(){
		return repolook.findTop10ByOrderByRatingDesc();
	}
	public List<Cancion> findByArtist(String artist) {
		// TODO Auto-generated method stub
		return repolook.findByArtist(artist);
	}
}
