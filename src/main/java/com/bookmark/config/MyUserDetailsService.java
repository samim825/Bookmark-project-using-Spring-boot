package com.bookmark.config;

import com.bookmark.dao.UserDao;
import com.bookmark.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.security.Principal;

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

//        }else{
//            Principal principal=null;
//            HttpServletRequest request=null;
//            User user1 = userDao.findByEmail(principal.getName());
//
//            HttpSession session = request.getSession();
//            session.setAttribute("name",user1.getName());
//            session.setAttribute("mobile",user1.getMobile());
//            session.setAttribute("id",user1.getId());
//            session.setAttribute("email",user1.getEmail());
       }

        return new UserPrincipal(user);
    }
}
