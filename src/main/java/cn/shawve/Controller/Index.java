package cn.shawve.Controller;

import cn.shawve.domain.PInformation;
import cn.shawve.domain.User;
import cn.shawve.service.PersonalInformation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

@Controller
@RequestMapping("/index")
@CrossOrigin(origins = "*",maxAge = 3600)
public class Index {

    @Autowired
    private PersonalInformation pInformation;

    @RequestMapping("/")
    public String SwitchToIndex(Model model){
        List<PInformation> information = pInformation.GetInformation();
        model.addAttribute("information",information);
        return "index";
    }
    /**
     * @Author shawve
     * @Description //TODO 获取个人信息
     * @Date 11:28 2020/3/25
     * @Param [map]
     * @return java.util.List<cn.shawve.domain.PInformation>
     **/
    @RequestMapping(value = "/getInformation")
    @ResponseBody
    public List<PInformation> test(@RequestBody List<User> map){
        //获取个人信息
        List<PInformation> PI = pInformation.GetInformation();
        for(User i :map){
            System.out.println(i.toString());
        }
        return PI;
    }
    @RequestMapping(value = "/getInformations")
    @ResponseBody
    public List<PInformation> test(){
        List<PInformation> PI = pInformation.GetInformation();
        return PI;
    }
    /**
     * @Author shawve
     * @Description //TODO 导航
     * @Date 11:27 2020/3/25
     * @Param [path]
     * @return java.lang.String
     **/
    @RequestMapping(value = "/Goto")
    public String Goto(@RequestParam String path){
        path = path.replace("\'","");
        if (path.equals("sproject")){
            return "sproject";
        }else if (path.equals("javaModular")){
            return "javaModular";
        }else if (path.equals("HTMLModular")){
            return "HTMLModular";
        }
        System.out.println(path);
        System.out.println(path.equals("sproject"));
        return "success";
    }


    /**
     * @Author shawve
     * @Description //TODO
     * @Date 17:40 2020/3/28
     * @Param []
     * @return java.lang.String
     **/
    @RequestMapping(value = "/practice")
    public String pratice(){
        return "practice";
    }
}
