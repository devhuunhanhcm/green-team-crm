package cybersoft.javabackend.crm.service;

import java.util.List;

import cybersoft.javabackend.crm.model.Job;
import cybersoft.javabackend.crm.repository.JobRepository;

public class JobService {
	private JobRepository jobRepo;
	
	
	public JobService() {
		jobRepo = new JobRepository();
	}


	public List<Job> getAllJobsByUser(int userID){
		return jobRepo.getAllJobByUserID(userID);
	}
}
