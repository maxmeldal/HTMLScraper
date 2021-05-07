package com.example.webscraper.services;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;

public class HTMLScraper {

    public static String scrape(String url){
        StringBuilder html = new StringBuilder();
        try {

            URL oracle = new URL(url);
            BufferedReader in = new BufferedReader(
                    new InputStreamReader(oracle.openStream()));

            String inputLine;
            while ((inputLine = in.readLine()) != null)
                html.append(inputLine).append(" ");
            in.close();
        }
        catch(Exception e){
            System.out.println("error in scraping: " + e.getMessage());
        }
        return html.toString();
    }
}
