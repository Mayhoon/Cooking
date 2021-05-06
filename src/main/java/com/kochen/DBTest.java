package com.kochen;

import com.kochen.model.Recipe;
import com.kochen.repository.RecipeRepository;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class DBTest {

    public static void main(String[] args) {


        //Should be instantiated once
        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");
        SessionFactory sessionFactory = cfg.buildSessionFactory();

        //Unit of work
        Session session = sessionFactory.openSession();
        session.beginTransaction();



    }
}
