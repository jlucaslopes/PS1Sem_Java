package br.com.fiap.repository.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;

import br.com.fiap.model.BotModel;
import br.com.fiap.model.SegmentsModel;

public class BotRowMapper  implements RowMapper<BotModel> {

	@Override
	public BotModel mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		BotModel bot = new BeanPropertyRowMapper<>(BotModel.class).mapRow(rs, rowNum);
		
		SegmentsModel segments = new BeanPropertyRowMapper<>(SegmentsModel.class).mapRow(rs, rowNum);
		
		bot.setSegments(segments);
		
		return bot;
		
	} 

}
