package com.kochen.hibernate;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "recipe")
public class Recipe {

    @Id
    @Column(name = "id")
    @GeneratedValue
    private int id;

    @Column(name = "recipe_name")
    private String recipe_name;

    @Column(name = "url")
    private String url;

    @Column(name = "category")
    private int category;

    @Column(name = "last_changed")
    private LocalDateTime last_changed;

    @Column(name = "description")
    private String description;

    @Column(name = "image_url")
    private String image_url;

//    @OneToOne(fetch = FetchType.LAZY)
//    @JoinColumn(name="difficulty", referencedColumnName="id")
    @Column(name = "difficulty")
    private int difficulty;

    @Column(name = "cooking_time")
    private int cooking_time;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRecipe_name() {
        return recipe_name;
    }

    public void setRecipe_name(String recipe_name) {
        this.recipe_name = recipe_name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public int getCategory() {
        return category;
    }

    public void setCategory(int category) {
        this.category = category;
    }

    public LocalDateTime getLast_changed() {
        return last_changed;
    }

    public void setLast_changed(LocalDateTime last_changed) {
        this.last_changed = last_changed;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage_url() {
        return image_url;
    }

    public void setImage_url(String image_url) {
        this.image_url = image_url;
    }

    public int getDifficulty() {
        return difficulty;
    }

    public void setDifficulty(int difficulty) {
        this.difficulty = difficulty;
    }

    public int getCooking_time() {
        return cooking_time;
    }

    public void setCooking_time(int cooking_time) {
        this.cooking_time = cooking_time;
    }

    @Override
    public String toString() {
        return getRecipe_name();
    }
}
