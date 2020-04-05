package cn.shawve.dao;

import cn.shawve.domain.Picture;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author shawve
 * @date 2020/3/14 21:26
 */
@Repository
public interface PictureDao {

    /**
     * @Author shawve
     * @Description //TODO 查找所有图片
     * @Date 21:27 2020/3/14
     * @Param []
     * @return java.util.List<cn.shawve.domain.Picture>
     **/
    @Select("SELECT * from picture")
    public List<Picture> pictureList();

    /**
     * @Author shawve
     * @Description //TODO 根据role 和 type 查询图片
     * @Date 21:29 2020/3/14
     * @Param [role, tyep]
     * @return java.util.List<cn.shawve.domain.Picture>
     **/
    @Select("select * from picture where role = #{role} AND type = #{type}")
    public List<Picture> picturesByRT(String role, String tyep);
    /**
     * @Author shawve
     * @Description //TODO 根据role查询图片
     * @Date 21:29 2020/3/14
     * @Param [role, tyep]
     * @return java.util.List<cn.shawve.domain.Picture>
     **/
    @Select("select * from picture where role = #{role}")
    public List<Picture> picturesByR(String role);

    /**
     * @Author shawve
     * @Description //TODO 根据type查询图片
     * @Date 21:29 2020/3/14
     * @Param [role, tyep]
     * @return java.util.List<cn.shawve.domain.Picture>
     **/
    @Select("select * from picture where type = #{type}")
    public List<Picture> picturesByT(String type);

    /**
     * @Author shawve
     * @Description //TODO 根据名字找图片
     * @Date 21:49 2020/3/14
     * @Param [name]
     * @return java.util.List<cn.shawve.domain.Picture>
     **/
    @Select("select * from picture where name = #{name}")
    public List<Picture> picturesByName(String name);

    /**
     * @Author shawve
     * @Description //TODO 根据文档id来找文档
     * @Date 22:15 2020/3/14
     * @Param [pid]
     * @return java.util.List<cn.shawve.domain.Article>
     **/
    @Select("select * from picture where pid IN (select pid from correspond where wid = #{wid})")
    public List<Picture> picturesByWid(Integer wid);

    /**
     * @Author shawve
     * @Description //TODO 插入图片
     * @Date 21:31 2020/3/14
     * @Param [picture]
     * @return void
     **/
    @Insert("insert into picture(role,path,type,name,create_time) VALUE(#{role}, #{path}, #{type}, #{name}, #{create_time})")
    public void pictureInsert(Picture picture);

    /**
     * @Author shawve
     * @Description //TODO 根据Pid删除图片
     * @Date 21:43 2020/3/14
     * @Param [pid]
     * @return void
     **/
    @Delete("delete from picture where pid = #{pid}")
    public void pictureDelete(Integer pid);
    /**
     * @Author shawve
     * @Description //TODO 根据pid修改图片
     * @Date 21:54 2020/3/14
     * @Param [pid, picture]
     * @return void
     **/
    @Update("update picture set role = #{role},path = #{path},type = #{type},name = #{name} where pid = #{pid}")
    public void modifyPictureByPid(Integer pid, Picture picture);
    /**
     * @Author shawve
     * @Description //TODO 根据名字修改图片
     * @Date 21:54 2020/3/14
     * @Param [Nname, picture]
     * @return void
     **/
    @Update("update picture set role = #{role},path = #{path},type = #{type},name = #{Nname} where name = #{name}")
    public void modifyPictureByName(String Nname, Picture picture);


}
