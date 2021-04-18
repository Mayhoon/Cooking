package com.kochen;

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




//        try {
//            Session session = HibernateUtil.getSessionFactory().openSession();
//
//
//            Recipe recipe = session.get(Recipe.class, 1);
//
//            for(Recipe r : recipe) {
//
//            }
//
//            System.out.println(recipe.getDifficulty().getDescription());
//        } catch (Exception e) {
//        }
    }
}
