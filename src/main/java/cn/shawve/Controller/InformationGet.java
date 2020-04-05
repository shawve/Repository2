package cn.shawve.Controller;/**
 * @author shawve
 * @date 2020/4/1 15:56
 */

import cn.shawve.dao.ArticleDao;
import cn.shawve.dao.PInformationDao;
import cn.shawve.dao.PictureDao;
import cn.shawve.domain.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

/**
 *@author shawve
 *@date 2020/4/1 15:56
 *@param
 */
@Controller
@RequestMapping("/information")
public class InformationGet {
    @Autowired
    private ArticleDao articleDao;
    @Autowired
    private PictureDao pictureDao;
    @Autowired
    private PInformationDao pInformationDao;


    @RequestMapping(value = "/Get")
    @ResponseBody
    public Information GetHTMLModular(String type){
        System.out.println(type);
        String s = type;
        Information information = new Information();
        //获取文章信息
        List<Article> articles = articleDao.articlesByT(type);
//        //获取图片信息
        List<Picture> pictures = pictureDao.picturesByT(type);
        information.setArticles(articles);
        information.setPictures(pictures);
        for (Article article: articles) {
            System.out.println(article.getName());
        }
        return information;
    }

//    @RequestMapping(value = "/GetJavaModular")
//    @ResponseBody
//    public Information GetJavaModular(){
//        Information information = new Information();
//        //获取文章信息
//        List<Article> articles = articleDao.articlesByT("javaModular");
////        //获取图片信息
//        List<Picture> pictures = pictureDao.picturesByT("javaModular");
//        information.setArticles(articles);
//        information.setPictures(pictures);
//        return information;
//    }
}
