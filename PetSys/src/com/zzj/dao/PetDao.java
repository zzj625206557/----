package com.zzj.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.zzj.entity.Pet;


public class PetDao extends BaseDao {
	private Connection conn;
	private ResultSet rs;
	private String sql;
	private PreparedStatement ps;

	/*
	 * 查找列表
	 */
	public List<Pet> all() {
		List<Pet> list = new ArrayList<Pet>();
		conn = this.getConnection();
		sql = "select PetId,PetName,Birthday,PetSex from Pet";
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				Pet p = new Pet(rs.getInt(1), rs.getString(2), rs.getString(3),
						rs.getInt(4));
				list.add(p);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			this.closeAll(rs, ps, conn);
		}
		return list;
	}

	/*
	 * 增加
	 */
	public int add(Pet pp) {
		conn = this.getConnection();
		sql = "insert into Pet values(?,?,?,?,?)";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, pp.getPetName());
			ps.setInt(2, pp.getPetBreed());
			ps.setInt(3, pp.getPetSex());
			ps.setString(4, pp.getBirthday());
			ps.setString(5, pp.getDesciption());
			return ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			this.closeAll(null, ps, conn);
		}
		return 0;
	}

	/*
	 * 删除
	 */
	public int del(Pet pp) {
		conn = this.getConnection();
		sql = "delete from Pet where PetId=?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, pp.getPetId());
			return ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			this.closeAll(null, ps, conn);
		}
		return 0;
	}

	/*
	 * 按品种查询
	 */
	public List<Pet> sel(Pet pp) {
		List<Pet> list = new ArrayList<Pet>();
		conn = this.getConnection();
		sql = "select PetId,PetName,Birthday,PetSex from Pet where PetBreed=?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, pp.getPetBreed());
			rs = ps.executeQuery();
			while (rs.next()) {
				Pet p = new Pet(rs.getInt(1),rs.getString(2), rs.getString(3),
						rs.getInt(4));
				list.add(p);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			this.closeAll(rs, ps, conn);
		}
		return list;
	}
	/*
	 * 修改
	 */
	public int upda(Pet pp) {
		conn = this.getConnection();
		sql = "update Pet set PetName=?,PetBreed=?,PetSex=?,Birthday=?,Description=? where PetId=?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, pp.getPetName());
			ps.setInt(2, pp.getPetBreed());
			ps.setInt(3, pp.getPetSex());
			ps.setString(4, pp.getBirthday());
			ps.setString(5, pp.getDesciption());
			ps.setInt(6, pp.getPetId());
			return ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			this.closeAll(null, ps, conn);
		}
		return 0;
	}
	/*
	 * 按Id查询后把值分配给修改页面
	 */
	public List<Pet> updax(Pet pp) {
		List<Pet> list = new ArrayList<Pet>();
		conn = this.getConnection();
		sql = "select * from Pet where PetId=?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, pp.getPetId());
			rs = ps.executeQuery();
			while (rs.next()) {
				Pet p = new Pet(rs.getInt(1),rs.getString(2),
						rs.getInt(3), rs.getInt(4),rs.getString(5),rs.getString(6));
				list.add(p);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			this.closeAll(rs, ps, conn);
		}
		return list;
	}
}
