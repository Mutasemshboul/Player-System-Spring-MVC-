package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.model.Player;
import com.spring.service.PlayerService;

@Controller
@RequestMapping("/fifa")
public class PlayerController {
	@Autowired
	private PlayerService playerService;
	
	
	
	@GetMapping("/players")
	public String players(Model model){
		List<Player> players= playerService.allPlayers();
		model.addAttribute("players",players);
		return "fifa-players";
	}



	public PlayerController() {
		
	}
	
	@GetMapping("/add")
	public String savePage(Model model) {
		model.addAttribute("player",new Player());
		return "addPlayer";
	}
	
	
	@PostMapping("/savePlayer")
	public String addUser(@ModelAttribute("player") Player player) {
		playerService.savePlayer(player);
		return "redirect:/fifa/players";
	}
	
	@GetMapping("/showplayer")
	public String showPlayer(@RequestParam("playerId") int id ,Model  model) {
		Player player = playerService.showPlayer(id);
		model.addAttribute("player",player);
		
		return "addPlayer";
	}
	
	@GetMapping("/removePlayer")
	public String removePlayer(@RequestParam("playerId") int  id) {
		playerService.deletePlayer(id);
		return "redirect:/fifa/players";
	}
	
	

}
