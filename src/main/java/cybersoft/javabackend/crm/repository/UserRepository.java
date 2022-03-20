package cybersoft.javabackend.crm.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cybersoft.javabackend.crm.dbconnection.MySqlConnection;
import cybersoft.javabackend.crm.dto.UserDto;
import cybersoft.javabackend.crm.model.Role;
import cybersoft.javabackend.crm.model.User;

public class UserRepository {
	// nhân sửa code
	public List<User> findAll(){
		List<User> lstUsers = new ArrayList<>();

		try {
			Connection conn = MySqlConnection.getConnection();
			String query = "select * from users u join roles r on u.role_id = r.id;";
			PreparedStatement statement = conn.prepareStatement(query);
			ResultSet res = statement.executeQuery();
			while (res.next()) {
				Role role = new Role();
				User user = new User();
				
				role.setId(res.getInt("id"));
				role.setName(res.getString("name"));
				role.setDescription(res.getString("description"));
				
				user.setId(res.getInt("u.id"));
				user.setEmail(res.getString("email"));
				user.setPassword(res.getString("password"));
				user.setName(res.getString("fullname"));
				user.setPhone(res.getString("phone"));
				user.setAddress(res.getString("address"));
				user.setRole(role);
				lstUsers.add(user);
			}
			conn.close();
			return lstUsers;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public void deleteById(int id) {
		
	
	}
	public boolean addUser(UserDto userDto) throws SQLException {
		String query = "insert into users(email,password,fullname,phone,address,role_id)"
				+ "values(?,?,?,?,?,?);";
		
		Connection conn = MySqlConnection.getConnection();
		
		try {
			PreparedStatement statement = conn.prepareStatement(query);
			statement.setString(1, userDto.getEmail());
			statement.setString(2, userDto.getPassword());
			statement.setString(3, userDto.getName());
			statement.setString(4, userDto.getPhone());
			statement.setString(5, userDto.getAddress());
			statement.setInt(6, userDto.getRoleId());
			
			statement.executeUpdate();
		} catch (SQLException e) {
			System.out.println("Unable to connect to database.");
			e.printStackTrace();
			return false;
		}finally {
			conn.close();
		}
		return true;
		
	
	}
}
