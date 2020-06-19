package br.com.fiap.model;

import java.math.BigDecimal;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.Size;

@Entity
@Table(name = "TB_BOT")
public class BotModel {
	private long id_bot;
	private String name;
	private String welcome_msg;
	private String farewell_msg; 
	private BigDecimal downtime; 
	private String default_answer; 
	private List<SegmentsModel> segments;
	
	public BotModel() {
	}

	public BotModel(long id_bot, String name, String welcome_msg, String farewell_msg, BigDecimal downtime,
			String default_answer) {
		super();
		this.id_bot = id_bot;
		this.name = name;
		this.welcome_msg = welcome_msg;
		this.farewell_msg = farewell_msg;
		this.downtime = downtime;
		this.default_answer = default_answer;
	}

	@Id
	@Column(name = "ID_BOT")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "BOT_SEQ")
	@SequenceGenerator(name = "BOT_SEQ", sequenceName = "BOT_SEQ", allocationSize = 1)
	public long getId_bot() {
		return id_bot;
	}

	public void setId_bot(long id_bot) {
		this.id_bot = id_bot;
	}

	@Column(name="NAME_BOT")
	@Size(min = 2, max = 40, message = "Nome deve ter no m�nimo 2 e no m�ximo 40 caracteres")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name="WELCOME_MSG")
	@Size(min = 1, message = "Mensagem de boas vindas � obrigat�ria")
	public String getWelcome_msg() {
		return welcome_msg;
	}

	public void setWelcome_msg(String welcome_msg) {
		this.welcome_msg = welcome_msg;
	}

	@Column(name="FAREWELL_MSG")
	@Size(min = 1, message = "Mensagem de despedida � obrigat�ria")
	public String getFarewell_msg() {
		return farewell_msg;
	}

	public void setFarewell_msg(String farewell_msg) {
		this.farewell_msg = farewell_msg;
	}

	@Column(name="DOWNTIME")
	@DecimalMin(value = "0.1", message = "Informe o tempo m�nimo de aus�ncia para o BOT ser desligado")
	public BigDecimal getDowntime() {
		return downtime;
	}

	public void setDowntime(BigDecimal downtime) {
		this.downtime = downtime;
	}

	@Column(name="DEFAULT_ANSWER")
	@Size(min = 1, message = "Mensagem para fluxos n�o conhecidos � obrigat�ria")
	public String getDefault_answer() {
		return default_answer;
	}

	public void setDefault_answer(String default_answer) {
		this.default_answer = default_answer;
	}

	@OneToMany(mappedBy="bot")
	public List<SegmentsModel> getSegments() {
		return segments;
	}

	public void setSegments(List<SegmentsModel> segments) {
		this.segments = segments;
	}
	
}
