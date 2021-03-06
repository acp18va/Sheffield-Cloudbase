package com.paymentMicroservice.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import com.paymentMicroservice.domain.Peanut_account;
import com.paymentMicroservice.rm.Peanut_accountRowMapper;

@Repository
public class Peanut_accountDAOImpl extends BaseDAO implements Peanut_accountDAO {

	@Override
	public Peanut_account save(Peanut_account p, Object attribute) {
		String sql = "INSERT INTO peanut_account(available_peanuts, userId)"
                + " VALUES(:available_peanuts, :userId)";
		Integer def = 1000;
		Map m = new HashMap();
		m.put("available_peanuts", def);
		m.put("userId", attribute);		
		
		
		 KeyHolder kh = new GeneratedKeyHolder();
	        SqlParameterSource ps = new MapSqlParameterSource(m);
	        super.getNamedParameterJdbcTemplate().update(sql, ps, kh);
	        Integer acc_id = kh.getKey().intValue();
	        p.setAcc_id(acc_id);
	        
	        return p;
	}		
	

	@Override
	public void updateSignIn(Integer UserId) {
		String sql = "UPDATE peanut_account SET available_peanuts=available_peanuts+1 WHERE userId=?";
		getJdbcTemplate().update(sql, UserId);		
	}
	
	@Override
	public void updatePayment(Integer UserId) {
		String sql = "UPDATE peanut_account SET available_peanuts=available_peanuts+1 WHERE userId=?";
		getJdbcTemplate().update(sql, UserId);		
	}
	
	@Override
	public void updateAppOwner(Integer UserId) {
		String sql = "UPDATE peanut_account SET available_peanuts=available_peanuts+3 WHERE userId=?";
		getJdbcTemplate().update(sql, UserId);		
	}
	
    @Override
	public void debitAccount(Integer UserId) {
    	String sql = "UPDATE peanut_account SET available_peanuts = available_peanuts-5 WHERE userId= ?";
		getJdbcTemplate().update(sql, UserId);
    }
    
	@Override
	public void delete(Peanut_account p) {
		this.delete(p.getAcc_id());
		
	}

	@Override
	public void delete(Integer acc_id) {
		String sql="DELETE FROM peanut_account WHERE acc_id=?";
        getJdbcTemplate().update(sql, acc_id);			
	}
	

	@Override
	public Peanut_account findById(Integer acc_id) {
		String sql = "SELECT acc_id, userId, available_peanuts FROM peanut_account WHERE acc_id=?";
		Peanut_account p = getJdbcTemplate().queryForObject(sql, new Peanut_accountRowMapper(), acc_id);
		return p;
	}

	@Override
	public Peanut_account findByProperty(String propName, Integer UserId) {
		String sql = "SELECT acc_id, userId, available_peanuts FROM peanut_account WHERE "+propName+"=?";
		return getJdbcTemplate().queryForObject(sql, new Peanut_accountRowMapper(), UserId);
		
	}


	@Override
	public List<Peanut_account> findAll() {
		String sql = "SELECT acc_id, userId, available_peanuts FROM peanut_account";
		return getJdbcTemplate().query(sql, new Peanut_accountRowMapper());
	}

}
