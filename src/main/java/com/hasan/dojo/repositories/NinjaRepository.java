package com.hasan.dojo.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.hasan.dojo.models.Ninja;

public interface NinjaRepository extends CrudRepository<Ninja,Long>{
	List<Ninja>findAll();
}
