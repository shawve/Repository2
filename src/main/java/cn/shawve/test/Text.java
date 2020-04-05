package cn.shawve.test;/**
 * @author shawve
 * @date 2020/4/1 12:28
 */

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *@author shawve
 *@date 2020/4/1 12:28
 *@param
 */
public class Text {
    public static void main(String[] args) {
        String time = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
        System.out.println(time);
    }
}
