package cn.shawve.domain;/**
 * @author shawve
 * @date 2020/3/23 22:23
 */

/**
 *@author shawve
 *@date 2020/3/23 22:23
 *@param
 */
public class User {
    private String userName;
    private String userSex;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserSex() {
        return userSex;
    }

    public void setUserSex(String userSex) {
        this.userSex = userSex;
    }

    @Override
    public String toString() {
        return "user{" +
                "userName='" + userName + '\'' +
                ", userSex='" + userSex + '\'' +
                '}';
    }
}
