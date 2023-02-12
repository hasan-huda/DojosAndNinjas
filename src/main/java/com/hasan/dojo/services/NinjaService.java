package com.hasan.dojo.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hasan.dojo.models.Ninja;
import com.hasan.dojo.repositories.NinjaRepository;

@Service
public class NinjaService {
	@Autowired
	NinjaRepository ninjaRepository;
	public Ninja saveNinja(Ninja n) {
		return ninjaRepository.save(n);
	}
	public Ninja fetchOneNinja(Long id) {
		Optional<Ninja> optionalNinja = ninjaRepository.findById(id);
		if(optionalNinja.isEmpty()) return null;
		return optionalNinja.get();
	}
	public void deleteNinja(Long id) {
		this.ninjaRepository.deleteById(id);
	}
}
