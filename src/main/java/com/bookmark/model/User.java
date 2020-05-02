package com.bookmark.model;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

/**
 * Created by User on 5/2/2020.
 */
@Entity
@Table(name = "user_table")
public class User {
    @Id
    @GeneratedValue
    @NotNull
    @Column(name = "user_id")
    private Integer id;

    
}
