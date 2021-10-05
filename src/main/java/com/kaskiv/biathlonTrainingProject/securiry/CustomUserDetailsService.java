package com.kaskiv.biathlonTrainingProject.securiry;


import com.kaskiv.biathlonTrainingProject.dao.CoachDao;
import com.kaskiv.biathlonTrainingProject.dao.UserDao;
import com.kaskiv.biathlonTrainingProject.model.AbstractUser;
import com.kaskiv.biathlonTrainingProject.model.Coach;
import com.kaskiv.biathlonTrainingProject.model.User;
import com.kaskiv.biathlonTrainingProject.securiry.model.CustomUserDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;
import java.util.Objects;

@Service
public class CustomUserDetailsService implements UserDetailsService {

    @Autowired
    private UserDao userRepository;

    @Autowired
    private CoachDao coachRepository;

    @Override
    public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
        AbstractUser user = userRepository.findByUserName(userName);

        if (Objects.isNull(user)) {
            user = coachRepository.findByUserName(userName);
            if (Objects.isNull(user)) {
                throw new UsernameNotFoundException("Username was not found!!!!!");
            }

        }
        List<String> roles;
        if (user instanceof User) {
            roles = Collections.singletonList("USER_ROLE");
        } else {
            roles = Collections.singletonList("COACH_ROLE");
        }

        return new CustomUserDetails(roles, user);
    }
}
