package cn.shawve.domain;/**
 * @author shawve
 * @date 2020/4/1 16:53
 */

import java.util.List;

/**
 *@author shawve
 *@date 2020/4/1 16:53
 *@param
 */
public class Information {
    private List<Article> articles;
    private List<Picture> pictures;

    public List<Article> getArticles() {
        return articles;
    }

    public void setArticles(List<Article> articles) {
        this.articles = articles;
    }

    public List<Picture> getPictures() {
        return pictures;
    }

    public void setPictures(List<Picture> pictures) {
        this.pictures = pictures;
    }
}
