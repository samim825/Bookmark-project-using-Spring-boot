package com.bookmark.config;

import com.bookmark.dao.UserDao;
import com.bookmark.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

/**
 * Created by User on 5/5/2020.
 */
@Service
public class MyUserDetailsService implements UserDetailsService {

    @Autowired
    private UserDao userDao;

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        System.out.println("loadUserByUsername method visited. Email is :"+email);

        User user = userDao.findByEmail(email);
        if(user==null) {
            throw new BadCredentialsException("Invalid E-mail or Password !!");

        }

        return new UserPrincipal(user);
    }
}
