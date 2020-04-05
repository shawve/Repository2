
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>文件上传</title>
    <link rel="stylesheet" href="../css/fileUpload.css">
    <script src="../js/vue.js" type="application/javascript"></script>
</head>
<body>
<div id="app" style="display: flex;flex-direction: column">
<form action="fileUpload" method="post" enctype="multipart/form-data" id="1" >
    <div class="frame">
        <div class="file_select">
        <h1>选择文件：</h1><input type="file" name="upload" class="file" v-model="fileName"/>
            <div>文件重命名：</div><input type="text" v-model="fileNewName" class="file_newName"/>
        </div>
        <div class="role" >
            选择文件类型：
            <label><input name="fileType"  type="radio" value="article" v-model="fileType" />文章</label>
            <label><input name="fileType"  type="radio" value="picture" v-model="fileType" />图片</label>
        </div >
            <div class="role" >
            选择角色类型：
            <label><input name="role"  type="radio" value="note" v-model="role"/>笔记</label>
            <label><input name="role"  type="radio" value="harvest" v-model="role" />感想</label>
        </div >
        <div class="type">
            选择模块类型：
            <label><input name="type"  type="checkbox" value="javaModular" v-model="type"/>java</label>
            <label><input name="type"  type="checkbox" value="sProject" v-model="type"/>小程序</label>
            <label><input name="type"  type="checkbox" value="HTMLModular" v-model="type" />网页</label>
        </div>

        <input type="submit"  class="submit" value="上传"  v-show="checked" @click="alter"/>
    </div>
</form>
    <button class="back"><a href="/website_war_exploded/index/" style="text-decoration:none;">返回主页</a></button>
<button class="button"  @click="check" v-show="!checked">合理性审核</button>
</div>
<script>
    new Vue({
        el:"#app",
        data:{
            // 单选框选择内容
            role:0,
            // 多选框选择内容
            type:[],
            //合理性检查
            checked:false,
            fileName:"",
            fileType:"",
            fileNewName:""
        },
        methods:{

            /**
             * @Author shawve
             * @Description //TODO 提交
             * @Date 22:27 2020/3/30
             * @Param 
             * @return 
             **/
            check:function(e) {

                var that = this;
                var type = that.type;
                var role = that.role;
                var fileName = that.fileName;
                var fileType = that.fileType;
                console.log("role:" +role);
                console.log("type:"+ type.length);
                console.log("fileName:"+ fileName);
                if (type.length >=0 && role !== 0 && fileName !== "" && fileType !== ""){
                    that.checked = true;
                }else{
                    alert("请完整信息后提交")
                }
            },
            /**
             * @Author shawve
             * @Description //TODO 清除表单内容
             * @Date 23:05 2020/3/31
             * @Param
             * @return
             **/
            alter:function (e) {
                alert("提交成功")
            }
        }
    })
</script>
</body>
</html>
