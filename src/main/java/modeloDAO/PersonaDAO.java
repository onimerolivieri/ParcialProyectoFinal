package modeloDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import config.Conexion;
import interfaces.CRUD;
import modelo.Persona;

public class PersonaDAO implements CRUD{
	Conexion cn = new Conexion();
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	Persona p = new Persona();
	
	
	@Override
	public List listar() {
		ArrayList<Persona> list = new ArrayList<>();
		String sql = "Select * from persona";
		try{
			con = cn.getConnection();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				Persona per = new Persona();
				per.setId(rs.getInt("id"));
				per.setDni(rs.getString("DNI"));
				per.setNom(rs.getString("Nombres"));
				list.add(per);
				
			}
		}catch(Exception e) {
			
		}
		return list;
	}

	@Override
	public Persona list(int id) {
		String sql = "Select * from persona where id="+id;
		try{
			con = cn.getConnection();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				p.setId(rs.getInt("id"));
				p.setDni(rs.getString("DNI"));
				p.setNom(rs.getString("Nombres"));
				
			}
		}catch(Exception e) {
			
		}
		return p;
	}

	@Override
	public boolean add(Persona per) {
		String sql = "INSERT INTO persona(DNI,Nombres) values('"+per.getDni()+"','"+per.getNom()+"')";
		try{
			con = cn.getConnection();
			ps = con.prepareStatement(sql);
			ps.executeUpdate();
		}catch(Exception e) {
			
		}
		return false;
	}

	@Override
	public boolean adit(Persona per) {
		String sql = "UPDATE persona SET DNI='"+per.getDni()+"',Nombres='"+per.getNom()+"'WHERE id ="+per.getId();
		try {
			con = cn.getConnection();
			ps = con.prepareStatement(sql);
			ps.executeUpdate();
		}catch(Exception e) {
			
		}
		return false;
	}

	@Override
	public boolean eliminar(int id) {
		String sql = "delete from persona where id="+id;
		try {
			con = cn.getConnection();
			ps=con.prepareStatement(sql);
			ps.executeUpdate();
		}catch(Exception e) {
			
		}
		return false;
	}

}
