package cn.shawve.domain;/**
 * @author shawve
 * @date 2020/3/14 21:23
 */

import java.sql.Date;
import java.sql.Timestamp;

/**
 *@author shawve
 *@date 2020/3/14 21:23
 *@param
 */
public class Article {
    private Integer wid;
    private String role;
    private String path;
    private String type;
    private String name;
    private Timestamp create_time;
    private Timestamp update_time;


    public Article(Integer wid, String role, String path, String type, String name, Timestamp create_time,Timestamp update_time) {
        this.wid = wid;
        this.role = role;
        this.path = path;
        this.type = type;
        this.name = name;
        this.create_time = create_time;
        this.update_time = update_time;
    }

    public Article(String role, String path, String type, String name,Timestamp create_time) {
        this.role = role;
        this.path = path;
        this.type = type;
        this.name = name;
        this.create_time = create_time;
    }

    public Integer getWid() {
        return wid;
    }

    public void setWid(Integer wid) {
        this.wid = wid;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Timestamp getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Timestamp create_time) {
        this.create_time = create_time;
    }

    public Timestamp getUpdate_time() {
        return update_time;
    }

    public void setUpdate_time(Timestamp update_time) {
        this.update_time = update_time;
    }
}
