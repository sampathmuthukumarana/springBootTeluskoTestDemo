package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.AlienRepo;
import com.example.demo.model.Alien;

@Service
public class AlienServiceImpl implements AlienService {
	@Autowired
	AlienRepo alienRepo;

	@Override
	public void save(Alien alien) {
		alienRepo.save(alien);
	}

	@Override
	public List<Alien> loadData() {
		return (List<Alien>) alienRepo.findAll();
	}

	@Override
	public void delete(int id) {
		Alien alien = alienRepo.findById(id).orElse(new Alien());
		alienRepo.delete(alien);

	}

}
