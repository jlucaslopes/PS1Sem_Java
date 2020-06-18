package br.com.fiap.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.fiap.model.SegmentsModel;

@Repository
public interface SegmentsRepository extends JpaRepository<SegmentsModel, Long>{

}
