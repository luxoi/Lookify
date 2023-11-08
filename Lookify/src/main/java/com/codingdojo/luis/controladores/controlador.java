package com.codingdojo.luis.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.codingdojo.luis.modelos.Cancion;
import com.codingdojo.luis.servicios.Servicio;

import jakarta.validation.Valid;

@Controller
public class controlador {
	@Autowired
	private Servicio serv;
	
	@GetMapping("/")
	private String index() {
		return "index.jsp";
	}
	@GetMapping("/dashboard")
	private String dashboard(Model model) {
		List<Cancion> listaDeCanciones = serv.findSongs();
		model.addAttribute("canciones", listaDeCanciones);
		return "dashboard.jsp";
	}
	@GetMapping("/new")
	public String newSong(@ModelAttribute("song") Cancion song) {	
		return "New.jsp";
	}
	@PostMapping("/save")
	public String saveSong(@Valid @ModelAttribute("song")Cancion song,
							BindingResult result) {
		if(result.hasErrors()) {
			return "New.jsp";
		}else {
			serv.saveSong(song);
			return "redirect:/dashboard";
		}
		
	}
	@GetMapping("/topTen")
	public String topTen(Model model){
		List<Cancion> top = serv.findTop();
		model.addAttribute("canciones", top);
		return "topten.jsp";
	}
	@GetMapping("/song/{id}")
	public String song(@PathVariable("id")Long id, Model model) {
		Cancion cancion= serv.findSong(id);
		model.addAttribute("cancion", cancion);
		return "Song.jsp";
	}
	@DeleteMapping("/delete/{id}")
	public String borrar(@PathVariable("id")Long id) {
		serv.deleteSong(id);
		return "redirect:/dashboard";
	}
	@GetMapping("/buscar/{artist}")
	public String searchByArtist(@PathVariable("artist") String artist, Model model) {
		List<Cancion> canciones = serv.findByArtist(artist);
		model.addAttribute("canciones", canciones);
		return "buscar.jsp";
	}

	@PostMapping("/buscar")
	public String search(@RequestParam(value="artist") String artist) {
		return "redirect:/buscar/"+artist;
	}
}
	
	