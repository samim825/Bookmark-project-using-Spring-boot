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



    @NotNull
    @Column(name="user_password")
    private String password;

    @NotNull
    private String name;


    @NotNull
    @Column(unique = true)
    private String email;

    private String mobile;

    private String image;

    @Column(name="user_role")
    private String role;

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }



    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
