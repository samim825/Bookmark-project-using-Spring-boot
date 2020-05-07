package com.bookmark.dao;

import com.bookmark.model.Contact;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by User on 5/7/2020.
 */
public interface ContactDao extends JpaRepository<Contact ,Integer> {
}
