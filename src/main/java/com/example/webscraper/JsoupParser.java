package com.example.webscraper;

import com.example.webscraper.model.Job;
import com.example.webscraper.services.HTMLScraper;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import java.util.ArrayList;
import java.util.List;

public class JsoupParser {

    public static List<Job> getJobs(){
        List<Job> jobs = new ArrayList<>();

        Document document = Jsoup.parse(HTMLScraper.scrape("https://thehub.io/jobs?countryCode=DK"));
        Elements sections = document.getElementsByClass("my-10");
        for (Element element : sections) {
            String title;
            String url;

            title=element.getElementsByClass("card-job-find-list__position").html();
            url="https://thehub.io" + element.getElementsByClass("card-job-find-list__link").attr("href");

            jobs.add(new Job(title, url));
        }
        return jobs;
    }

}
