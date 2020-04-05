package cn.shawve.service.imp;

import cn.shawve.dao.ArticleDao;
import cn.shawve.dao.PInformationDao;
import cn.shawve.domain.PInformation;
import cn.shawve.service.PersonalInformation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("PersonalInformation")
public class PersonalInformationImpl implements PersonalInformation {
    @Autowired
    PInformationDao pInformationDao;

    @Autowired
    ArticleDao articleDao;

    /**
     * 获取个人信息并返回
     * @return
     */
    public List<PInformation> GetInformation(){
        return pInformationDao.GetInformation();
    }
}
