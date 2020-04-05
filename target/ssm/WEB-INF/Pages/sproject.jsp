
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="../css/sproject.css">
    <script src="../js/vue.js" type="application/javascript"></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <title>小程序</title>
</head>
<body>
    <div class="frame" id="app">
        <div class="colorful"></div>
        <div class="title_text">首页</div>
        <div class="frame_white">
            <div class="frame_icon_title">
                <img src="" class="icon"/>
                <div class="text_title">微信小程序</div>
            </div>
            <div class="frame_text">
                <div class="text">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;小程序是一种新的开放能力，开发者可以快速地开发一个小程序。
                    小程序可以在微信内被便捷地获取和传播，同时具有出色的使用体验。</div>
                <div class="text" style="font-size: 12.5px;width: 100px;align-self: flex-end;margin-right: 30px" >--微信官方介绍</div>
                <div class="text">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本人是在自学html5+css3+javascprict的时候，突然有小程序开发的项目，然后心一横，火急火赶地去学习
                    小程序。
                    可能是因为有一点前端以及java基础，所以学习起来都是一帆风顺的，再加上小程序对很多方法很多组件都
                    进行了封装 ，所以对静态页面部分的编写效果也还算过得去（*），除此之外，也有经常借鉴网上的各种各样技
                    术文档，受益颇深。对于之后的js编写，个人感觉跟写java差不多，而且还多了一些小程序的自身的方法辅助，所
                    以就会容易很多啦。</div>
                <div class="text" style="color:rgba(32,29,29,1);font-size: 10.5px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*一开始编写的时候，对待项目给的切图工具不是特别会用，以至于对于距离、颜色、等细节的东西把控不到位</div>
            </div>
            <div class="line"></div>
            <div class="circular">文档</div>
            <div class="frame_file">
                <div class="frame_file_inner">
                    <img src="" class="picture_head"/>
                    <div class="text_file_explain">这是一个啊实打实阿
                        三收到阿萨是</div>
                    <div style="display: flex">
                    <div style="margin-right: 30px;">打开</div> <text >下载</text>
                    </div>
                </div>
                <div class="frame_file_inner">
                    <img src="" class="picture_head"/>
                    <div class="text_file_explain">这是一个啊实打实阿
                        三收到阿萨是</div>
                    <div style="display: flex">
                        <div style="margin-right: 30px;">打开</div> <text >下载</text>
                    </div>
                </div>
                <div class="frame_file_inner">
                    <img src="" class="picture_head"/>
                    <div class="text_file_explain">这是一个啊实打实阿
                        三收到阿萨是</div>
                    <div style="display: flex">
                        <div style="margin-right: 30px;">打开</div> <text >下载</text>
                    </div>
                </div>
            </div>
            <div class="frame_file_list">
                <div class="frame_left">
                    <div class="text_harvest">心得体会</div>
                    <img src="" class="picture_file_down"/>
                </div>
                <div class="frame_list">
                    <div class="text_file_detail">
                        <div class="order"></div>
                        <div class="text_file" style="margin-left:30px">srpingMVC心得</div>
                        <div class="text_file" style="margin-left:100px;">2019-9-6</div>
                        <div class="frame_button"style="margin-left: 105px;">
                            <div class="text_file">打开</div>
                            <div class="text_file" style="margin-left: 20px;">下载</div>
                        </div>
                    </div>
                    <div class="text_file_detail_B">
                        <div class="order"></div>
                        <div class="text_file" style="margin-left:30px">srpingMVC心得</div>
                        <div class="text_file" style="margin-left:100px;">2019-9-6</div>
                        <div class="frame_button"style="margin-left: 105px;">
                            <text class="text_file">打开</text>
                            <text class="text_file" style="margin-left: 20px;">下载</text>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
<script>
    new Vue({
        el:"#app",
        data:{
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
                    url: 'http://localhost:8080/website_war_exploded/information/Get?type=sProject',
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
