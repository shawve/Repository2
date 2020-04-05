package cn.shawve.dao;

import cn.shawve.domain.Article;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author shawve
 * @date 2020/3/14 21:57
 */
@Repository
public interface ArticleDao {
    /**
     * @Author shawve
     * @Description //TODO 查找所有文档
     * @Date 21:27 2020/3/14
     * @Param []
     * @return java.util.List<cn.shawve.domain.Article>
     **/
    @Select("SELECT * from article")
    public List<Article> articleList();

    /**
     * @Author shawve
     * @Description //TODO 根据role 和 type 查询文档
     * @Date 21:29 2020/3/14
     * @Param [role, tyep]
     * @return java.util.List<cn.shawve.domain.Article>
     **/
    @Select("select * from article where role = ${role} AND type = ${type}")
    public List<Article> articlesByRT(String role, String tyep);
    /**
     * @Author shawve
     * @Description //TODO 根据role查询文档
     * @Date 21:29 2020/3/14
     * @Param [role, tyep]
     * @return java.util.List<cn.shawve.domain.Article>
     **/
    @Select("select * from article where role = ${role}")
    public List<Article> articlesByR(String role);

    /**
     * @Author shawve
     * @Description //TODO 根据type查询文档
     * @Date 21:29 2020/3/14
     * @Param [role, tyep]
     * @return java.util.List<cn.shawve.domain.Article>
     **/
    @Select("select * from article where type = #{type}")
    public List<Article> articlesByT(String type);

    /**
     * @Author shawve
     * @Description //TODO 根据名字找文档
     * @Date 21:49 2020/3/14
     * @Param [name]
     * @return java.util.List<cn.shawve.domain.Article>
     **/
    @Select("select * from article where name = #{name}")
    public List<Article> articlesByName(String name);
    
    /**
     * @Author shawve
     * @Description //TODO 根据图片id来找文档
     * @Date 22:15 2020/3/14
     * @Param [pid]
     * @return java.util.List<cn.shawve.domain.Article>
     **/
    @Select("select * from article where wid IN (select wid from correspond where pid = #{pid})")
    public List<Article> articlesByPid(Integer pid);

    /**
     * @Author shawve
     * @Description //TODO 插入文档
     * @Date 21:31 2020/3/14
     * @Param [article]
     * @return void
     **/
    @Insert("insert into article(role,path,type,name,create_time) VALUES(#{role},#{path},#{type},#{name},#{create_time})")
    public void articleInsert(Article article);

    /**
     * @Author shawve
     * @Description //TODO 根据Pid删除文档
     * @Date 21:43 2020/3/14
     * @Param [pid]
     * @return void
     **/
    @Delete("delete from article where pid = ${pid}")
    public void articleDelete(Integer pid);
    /**
     * @Author shawve
     * @Description //TODO 根据pid修改文档
     * @Date 21:54 2020/3/14
     * @Param [pid, article]
     * @return void
     **/
    @Update("update article set role = #{role},path = #{path},type = #{type},name = #{name} where pid = #{pid}")
    public void modifyArticleByPid(Integer pid, Article article);
    /**
     * @Author shawve
     * @Description //TODO 根据名字修改文档
     * @Date 21:54 2020/3/14
     * @Param [Nname, article]
     * @return void
     **/
    @Update("update article set role = #{role},path = #{path},type = #{type},name = #{Nname} where name = #{name}")
    public void modifyArticleByName(String Nname, Article article);
}
