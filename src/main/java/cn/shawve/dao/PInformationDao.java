package cn.shawve.dao;

import cn.shawve.domain.PInformation;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PInformationDao {

    /**
     * @return java.util.List<cn.shawve.domain.PInformation>
     * @Author shawve
     * @Description //TODO 查询个人信息
     * @Date 21:20 2020/3/14
     * @Param []
     **/
    @Select("select * from pinformation")
    public List<PInformation> GetInformation();

    /**
     * @return void
     * @Author shawve
     * @Description //TODO 修改个人信息
     * @Date 21:20 2020/3/14
     * @Param []
     **/
    @Update("update pinformation set name = #{name},job = #{job}," +
            "livePosition = #{livePosition},email = #{email},motto = #{motto} where id = #{id}")
    public void ModifyInformation(PInformation pInformation);


}
