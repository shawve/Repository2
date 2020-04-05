package cn.shawve.domain;

import java.io.Serializable;

/**
 * 商品列表
 */
public class PInformation implements Serializable{

    private Integer id;
    private String name;
    private String job;
    private String livePosition;    //住址
    private String email;
    private String motto;   //座右铭

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public String getLivePosition() {
        return livePosition;
    }

    public void setLivePosition(String livePosition) {
        this.livePosition = livePosition;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMotto() {
        return motto;
    }

    public void setMotto(String motto) {
        this.motto = motto;
    }

    @Override
    public String toString() {
        return "personalInformation{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", job='" + job + '\'' +
                ", livePosition='" + livePosition + '\'' +
                ", email='" + email + '\'' +
                ", motto='" + motto + '\'' +
                '}';
    }
}
