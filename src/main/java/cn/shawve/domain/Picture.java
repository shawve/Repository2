package cn.shawve.domain;/**
 * @author shawve
 * @date 2020/3/14 21:21
 */

import java.sql.Timestamp;

/**
 *@author shawve
 *@date 2020/3/14 21:21
 *@param
 */
public class Picture {
    private Integer pid;
    private String role;
    private String path;
    private String type;
    private String name;
    private Timestamp create_time;
    private Timestamp update_time;

    /**
     * @Author shawve
     * @Description //TODO 用于插入的构造函数
     * @Date 16:21 2020/4/1
     * @Param [role, path, type, name, create_time]
     * @return
     **/
    public Picture( String role, String path, String type, String name, Timestamp create_time) {
        this.role = role;
        this.path = path;
        this.type = type;
        this.name = name;
        this.create_time = create_time;
    }
    /**
     * @Author shawve
     * @Description //TODO 用于获取数据的构造函数
     * @Date 16:33 2020/4/1
     * @Param [pid, role, path, type, name, create_time, update_time]
     * @return 
     **/
    public Picture(Integer pid, String role, String path, String type, String name, Timestamp create_time, Timestamp update_time) {
        this.pid = pid;
        this.role = role;
        this.path = path;
        this.type = type;
        this.name = name;
        this.create_time = create_time;
        this.update_time = update_time;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
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
