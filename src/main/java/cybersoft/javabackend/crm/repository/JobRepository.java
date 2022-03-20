package cybersoft.javabackend.crm.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import cybersoft.javabackend.crm.dbconnection.MySqlConnection;
import cybersoft.javabackend.crm.model.Job;
import cybersoft.javabackend.crm.model.Role;
import cybersoft.javabackend.crm.model.User;

public class JobRepository {

	public List<Job> getAllJobByUserID(int userID) {
		List<Job> lstJob = new ArrayList<>();

		try {
			Connection conn = MySqlConnection.getConnection();
			String query = "select distinct j.*, u.*, r.* from jobs j "
					+ "join tasks t on j.id = t.job_id "
					+ "join users u on j.manager_id = u.id "
					+ "join roles r on u.role_id = r.id "
					+ "where t.user_id = ?;";
			PreparedStatement statement = conn.prepareStatement(query);
			statement.setInt(1, userID);
			ResultSet res = statement.executeQuery();
			while (res.next()) {
				Job job = new Job();
				User manager = new User();
				Role role = new Role();

				job.setId(res.getInt("id"));
				job.setName(res.getString("name"));
				job.setDescription(res.getString("description"));
				job.setStart_date(new Timestamp(res.getDate("start_date").getTime()).toLocalDateTime());
				job.setEnd_date(new Timestamp(res.getDate("end_date").getTime()).toLocalDateTime());

				manager.setId(res.getInt("manager_id"));
				manager.setName(res.getString("fullname"));
				manager.setEmail(res.getString("email"));
				manager.setPassword(res.getString("password"));
				manager.setPhone(res.getString("phone"));
				manager.setAddress(res.getString("address"));
				
				role.setId(res.getInt("r.id"));
				role.setName(res.getString("r.name"));
				role.setDescription(res.getString("r.description"));
				
				manager.setRole(role);
				job.setManagerID(manager);
				
				lstJob.add(job);
			}
			conn.close();
			return lstJob;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
