package com.kochen.hibernate;

import javax.persistence.*;

@Entity
@Table(name = "example")
public class Example {

    @Id
    @Column(name = "id")
    @GeneratedValue
    private int id;

    @Column(name = "name")
    private String names;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNames() {
        return names;
    }

    public void setNames(String names) {
        this.names = names;
    }

    @Override
    public String toString() {
        return "ID: "+getId()+" name: "+getNames();
    }
}
