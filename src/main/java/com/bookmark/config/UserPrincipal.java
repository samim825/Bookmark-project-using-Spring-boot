package com.bookmark.config;

import com.bookmark.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.Collections;

/**
 * Created by User on 5/5/2020.
 */
public class UserPrincipal implements UserDetails {

    private User user;

    public UserPrincipal(User user) {

        super();
        this.user = user;
        System.out.println("UserPrincipal constructor visited");
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        System.out.println("getAuthorities method visited");
        return Collections.singleton(new SimpleGrantedAuthority("USER"));
    }

    @Override
    public String getPassword() {
        System.out.println("getPassword method visited");
        return user.getPassword();
    }

    @Override
    public String getUsername() {
        System.out.println("getUsername method visited");
        return user.getEmail();
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
}
