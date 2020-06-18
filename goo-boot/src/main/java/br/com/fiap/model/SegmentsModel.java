package br.com.fiap.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Size;

@Entity
@Table(name="TB_SEGMENTS")
public class SegmentsModel {
	private long id_segments;
	private String name;
	private List<BotModel> bot;
	
	public SegmentsModel() {
	}

	public SegmentsModel(long id_segments, String name) {
		super();
		this.id_segments = id_segments;
		this.name = name;
	}

	
	@Id
	@Column(name = "ID_SEGMENTS")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SEGMENTS_SEQ")
	@SequenceGenerator(name = "SEGMENT_SEQ", sequenceName = "SEGMENT_SEQ", allocationSize = 1)
	public long getId_segments() {
		return id_segments;
	}

	public void setId_segments(long id_segments) {
		this.id_segments = id_segments;
	}

	@Column(name="NAME_SEGMENTS")
	@Size(min = 1, message = "Informe o nome do segmento")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@OneToMany(mappedBy = "segments")
	public List<BotModel> getBot() {
		return bot;
	}

	public void setBot(List<BotModel> bot) {
		this.bot = bot;
	}
	
}
