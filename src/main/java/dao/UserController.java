package dao;

import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.training.transportcomany2.dto.UserDto;
import com.training.transportcomany2.model.Authorities;
import com.training.transportcomany2.model.User;
import com.training.transportcomany2.services.UserService;


public class UserController {
	Logger logger = LoggerFactory.getLogger(UserController.class);
	@Autowired
	UserService userService;
	
	public List<User> allUsers() {
		System.out.println("________________Inside ________________________");
		return userService.allUsers();
	}
	public void addUser(@RequestBody UserDto userDto) {
		User user = new User();
		Authorities authorities = new Authorities();
		
		user.setId(userDto.getId());
		user.setFirstName(userDto.getFirstName());
		user.setLastName(userDto.getLastName());
		user.setContactno(userDto.getContactno());
		user.setUname(userDto.getUname());
		user.setPassword(userDto.getPassword());
		authorities.setAuthority("ROLE_user");
		authorities.setUname(userDto.getUname());
		user.setAuthorities(authorities);
		
		authorities.setUser(user);	
		logger.trace("userDTO: "+userDto.toString());
		logger.trace("USER: "+user.toString());
		userService.insert(user);
	}
	@DeleteMapping("/deleteUser/{userId}")
	public void deleteUser(@PathVariable int userId) {
		userService.delete(userId);
	}
}
