package com.bookmark.dao;

import com.bookmark.model.Bookmark;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by User on 5/7/2020.
 */
public interface BookmarkDao extends JpaRepository<Bookmark,Integer> {
}
