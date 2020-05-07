package com.bookmark.dao;

import com.bookmark.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by User on 5/5/2020.
 */
public interface UserDao extends JpaRepository<User, Integer> {
    User findByEmail(String email);
}
