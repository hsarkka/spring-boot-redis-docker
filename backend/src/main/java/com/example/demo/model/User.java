package com.example.demo.model;

import java.io.Serializable;

public class User implements Serializable {

    private static final long serialVersionUID = -64073315818859769L;

    private long id;
    private String name;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
