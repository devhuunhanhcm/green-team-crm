package cybersoft.javabackend.crm.service;

import java.util.List;

import cybersoft.javabackend.crm.dto.UserDto;
import cybersoft.javabackend.crm.model.User;
import cybersoft.javabackend.crm.repository.UserRepository;

public class UserService {
	private UserRepository userRepo;
	
	public UserService() {
		userRepo = new UserRepository();
	}

	public List<User> findAll() {
		
		return userRepo.findAll();
	}

	public void deleteById(int id) {
		
	}

	public void add(UserDto dto) {
		
	}
}
