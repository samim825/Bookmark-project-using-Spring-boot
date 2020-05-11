package com.bookmark.dao;

import com.bookmark.model.Contact;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * Created by User on 5/7/2020.
 */
public interface ContactDao extends JpaRepository<Contact ,Integer> {

    @Query("from Contact c where c.userId =:uid and status=1")
    List<Contact> findDataByUserId(@Param("uid") Integer uid);
}
