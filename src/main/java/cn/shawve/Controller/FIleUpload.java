package cn.shawve.Controller;

import cn.shawve.dao.ArticleDao;
import cn.shawve.dao.PictureDao;
import cn.shawve.domain.Article;
import cn.shawve.domain.Picture;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/upload")
public class FIleUpload {
    private static final java.util.UUID UUID = java.util.UUID.randomUUID();
    @Autowired
    ArticleDao articleDao;
    @Autowired
    PictureDao pictureDao;

    @RequestMapping("/toJsp")
    public String ToJsp() {
        return "fileUpload";
    }

    /**
     * 文件上传
     */
    @RequestMapping("/fileUpload")
    public String Fileupload(HttpServletRequest request, MultipartFile upload,
                             String fileNewName, String role,String fileType,String[] type) throws Exception {
        //设置路径
        String path = request.getSession().getServletContext().getRealPath("/uploads/");
        System.out.println("path"+path);
        //根据路径创建文件
        File file = new File(path);
        if (!file.exists()) {    //若不存在此文件夹
            file.mkdirs();    //创建文件夹
        }
        //上传文件项
        List<Object> list = new ArrayList<Object>();
        //获取文件名称
        String fileName = upload.getOriginalFilename();
        //如果文件重命名不为空，以重命名为文件名进行封装
        if (fileNewName != null){
            list = ChangeFile(role,path,type,fileNewName,fileType);//调用格式转换函数
        }else{
            list = ChangeFile(role,path,type,fileName,fileType);
        }

        //遍历list，并获取对应文件，最后插入数据库
        if (fileType.equals("picture")){
           for(int i = 0; i < list.size(); i++){
               Picture File = (Picture) list.get(i);
               pictureDao.pictureInsert(File);
           }
        }else if (fileType.equals("article")){
            for(int i = 0; i < list.size(); i++){
                Article File = (Article) list.get(i);
                articleDao.articleInsert(File);
            }
        }


//        //把文件名设置成唯一：
//        String uuid = UUID.toString().replace("-", "");
//        fileName = uuid + "" + fileName;
        //完成文件上传(复制到服务器中)
        upload.transferTo(new File(path, fileName));
        return "fileUpload";
    }
    /**
     * @Author shawve
     * @Description //TODO 根据表单提交的数据，镶嵌至相应文件(artical,picture)中。
     * @Date 22:58 2020/3/31
     * @Param [fileName, path, role, type, fileType]
     * @return java.lang.Object
     **/
    public List<Object> ChangeFile(String role,String path, String[] type,String fileName,String fileType){
        Timestamp time = new Timestamp(new Date().getTime());
        System.out.println(time);
        if (fileType.equals("picture")){
            List<Object> temp = new ArrayList<Object>();
            //若有多个模块类型，需要遍历封装，下同
            for (String s:type) {
                Picture File = new Picture(role,path,s,fileName,time);
                temp.add(File);
            }
            return temp;
        }else if (fileType.equals("article")){
            List<Object> temp = new ArrayList<Object>();
            for (String s:type) {
                Article File = new Article(role,path,s,fileName,time);
                temp.add(File);
            }
             return temp;
        }
        return null;
    }

}
