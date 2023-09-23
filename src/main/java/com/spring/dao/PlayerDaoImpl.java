package com.spring.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.model.Player;

@Repository
public class PlayerDaoImpl implements PlayerrDAO {
	
	private SessionFactory sessionFactory;
	
	@Autowired
	public PlayerDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<Player> getPlayers() {
		
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Query<Player> query = session.createQuery("from Player",Player.class);
		return query.getResultList();
	}

	@Override
	public void addPlayers(Player player) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(player);
		
	}

	@Override
	public Player getPlayer(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		return session.get(Player.class, id);
	}

	@Override
	public void removePlayer(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		
		Query q = session.createQuery("delete from Player where id=?1");
		q.setInteger(1, id);
		q.executeUpdate();
	}
	
	
	
	

}
