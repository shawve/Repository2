
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Java区域</title>
    <link rel="stylesheet" type="text/css" href="../css/javaModular.css">
    <script src="../js/vue.js" type="application/javascript"></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
</head>
<body>
<div class="frame" id="shawve">
    <div class="colorful"></div>
    <div class="title_text">JAVA</div>
    <div class="frame_white">
        <div class="frame_icon_title">
            <img src="../images/java@2x.png" class="icon"/>
            <div class="text_title">JAVA</div>
        </div>
        <div class="frame_text">
            <div class="text">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;JAVA世界第一！！！个人觉得，不喜勿喷，嘻嘻</div>
            <div class="text">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我大一就开始接触JAVA了，但是当时比较贪玩，加上没什么氛围，自
                己的方向也还没找准，以至于一直被”搁置“。直到要完成大二课程设计的时
                候才从新拾起，然后发现，JAVA真好玩。后来，经过JAVA老师（师兄）带领学习之后，JAVA技术突飞猛进（自认为，233），学习更有劲儿了</div>
            <div class="text" style="color:rgba(32,29,29,1);font-size: 10.5px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;之后数据库课设时，老师说前后端分离的课设有加分，就尝试了从0到
                有的突破，自学SSM，边学边打码，3天完成（考完试了，一天到晚学）工
                作，我还记得第四天是3点睡的，6点钟起床写报告，痛并快乐着~ </div>
        </div>
        <div class="line"></div>


        <div class="frame_swiper">
            <img src=""class="picture_item" id="1"/>
            <span class="spot"></span>
        </div>
        <div class="frame_file_list">
            <div class="frame_list">
                <div :class="[(index%2==1)? 'text_file_detail':'text_file_detail_B']" v-for="(article,index) in articles" :key="index">
                    <div class="order"></div>
                    <div class="text_file"  style="margin-left:30px;width:150px">{{article.name}}</div>
                    <div class="text_file" style="margin-left:62px;">{{article.create_time}}</div>
                    <div class="frame_button"style="margin-left: 105px;">
                        <div class="text_file">打开</div>
                        <div class="text_file" style="margin-left: 20px;">下载</div>
                    </div>
                </div>
<%--                <div class="text_file_detail_B">--%>
<%--                    <div class="order"></div>--%>
<%--                    <div class="text_file" style="margin-left:30px">srpingMVC心得</div>--%>
<%--                    <div class="text_file" style="margin-left:100px;">2019-9-6</div>--%>
<%--                    <div class="frame_button"style="margin-left: 105px;">--%>
<%--                        <div class="text_file">打开</div>--%>
<%--                        <div class="text_file" style="margin-left: 20px;">下载</div>--%>
<%--                    </div>--%>
<%--                </div>--%>
            </div>
            <div class="frame_coffee">
                <img src="" class="QRcode"></img>
                <text class="text_thanks">觉得有用的话不
                    妨帮我点包辣条</text>
                <div class="frame_util">
                    <div class="frame_item">
                        <img src="" class="home"/>
                        <div class="text_icon">返回上一页</div>
                    </div>
                    <div class="frame_item">
                        <img src="" class="home"/>
                        <div class="text_icon">返回主页</div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
<script type="text/javascript">
    new Vue({
        el:'#shawve',
        data:{
            site:"springmvc",
            massage:"sss",
            articles:[{},],
            pictures:[{},]
        },
        mounted() {
            this.getData();
        },
        methods:{
            /**
             * @Author shawve
             * @Description //TODO 获得文章、图片数据
             * @Date 20:27 2020/4/1
             * @Param
             * @return
             **/
            getData: function () {
                var that = this;
                axios({
                    method: 'POST',
                    url: 'http://localhost:8080/website_war_exploded/information/Get?type=javaModular',
                    // ContentType: 'application/json;charset=utf-8',
                }).then(function (res) {
                    console.log(res.data)
                    that.articles = res.data.articles;
                    that.pictures = res.data.pictures;
                }).catch(function (error) {
                    console.log(error)
                });
            },
        }
    })
</script>
</body>

</html>