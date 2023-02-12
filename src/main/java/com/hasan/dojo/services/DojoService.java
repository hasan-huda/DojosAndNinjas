package com.hasan.dojo.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hasan.dojo.models.Dojo;
import com.hasan.dojo.repositories.DojoRepository;

@Service
public class DojoService {
	 @Autowired
	 DojoRepository dojoRepository;
	 
	 public Dojo saveDojo(Dojo d) {
		 return dojoRepository.save(d);
	 }
	 public Dojo fetchOneDojo(Long id) {
		 Optional<Dojo> optionalDojo = dojoRepository.findById(id);
		 if(optionalDojo.isEmpty()) return null;
		 return optionalDojo.get();
	 }
	 public List<Dojo> fetchAllDojos(){
		 return dojoRepository.findAll();
	 }
	 public void deleteDojo(Long id) {
		 this.dojoRepository.deleteById(id);
	 }
}
