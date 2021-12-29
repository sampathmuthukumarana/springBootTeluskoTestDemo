package com.example.service;


import java.util.List;

import com.example.demo.model.Alien;

public interface AlienService {
	void save(Alien alien);
	List<Alien> loadData();
	void delete(int id);

}
