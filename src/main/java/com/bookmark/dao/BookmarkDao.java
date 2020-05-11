package com.bookmark.dao;

import com.bookmark.model.Bookmark;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * Created by User on 5/7/2020.
 */
public interface BookmarkDao extends JpaRepository<Bookmark,Integer> {


   @Query("From Bookmark b where b.userId=:uid and status=1")
    List<Bookmark> findDataByUserId(@Param("uid") Integer uid);
}
