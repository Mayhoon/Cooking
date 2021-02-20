package com.kochen.hibernate;

import javax.persistence.*;

@Entity
@Table(name = "difficulty")
public class Difficulty {

    @Id
    @Column(name = "id")
    @GeneratedValue
    private int id;

    @Column(name = "difficulty_desc")
    private String description;

    @Column(name = "hex_color")
    private String hexColor;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getHexColor() {
        return hexColor;
    }

    public void setHexColor(String hexColor) {
        this.hexColor = hexColor;
    }
}
