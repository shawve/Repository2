<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>shawve的个人主页</title>
    <link rel="stylesheet" type="text/css" href="../css/index.css">
    <script src="../js/vue.js" type="application/javascript"></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
</head>
<body>

<div style="display: flex;flex-direction: column" id="app" class="big_frame">
    <div class="frame_top" :style="{height:screenSize.height + 'px',width:screenSize.width + 'px'}">
        <img class="picture_left" src="../images/naruto@2x.png"/>
        <div class="frame_text">
            <div class="title">你好，<br/>我是shawve，<br/>一位乐观主义者</div>
            <div class="hobbit">喜欢运动、动漫、电竞、编程、学习</div>
        </div>
        <img class="picture_right" src="../images/sasigay@2x.png"/>
    </div>
    <div class="frame_down">
        <div class="colorful"></div>
        <div class="title_text">首页</div>

        <div class="frame_role_button">
            <a class="frame_role_button_item" href="Goto?path='sproject'" style="text-decoration:none;">
                <img src="../images/sproject@2x.png" class="picture_role_button"/>
                <div class="role_button_title" style="color:rgba(21,211,39,1);">小程序</div>
            </a>
            <a class="frame_role_button_item" style="margin-left:80.5px;margin-right:80.5px;text-decoration:none;"
               href="Goto?path='javaModular'">
                <img src="../images/java@2x.png" class="picture_role_button" style="margin-right: 23px"/>
                <div class="role_button_title" style="color:rgba(23,111,170,1);">java</div>
            </a>
            <a class="frame_role_button_item" href="Goto?path='HTMLModular'" style="text-decoration:none;">
                <img src="../images/web@2x.png" class="picture_role_button" style="width: 63px"/>
                <div class="role_button_title" style="color:#F7941D;">网页</div>
            </a>
        </div>


        <div class="frame_information">
        <span class="frame_background_color">
        <div class="frame_info_left">
            <div class="frame_info_left_top">
                <img src="../images/dio.png" class="picture_head"/>
                <div class="frame_info_letf_top_text">
                    <div class="text_name" style="font-family: '新細明體-ExtB';font-weight: bold">{{pInformation.name}}</div>
                    <div class="line_name"></div>
                    <div class="text_name" style="margin-bottom: 13px;">{{pInformation.motto}}</div>
                </div>
            </div>
            <div class="frame_info_left_down">
            </div>
        </div>
        <div class="frame_info_middle">
            <div class="button_text">个人经历<br/>
                <span class="button_text_small">一笑一哭皆是成长之路</span>
            </div>
            <div class="button_text" style="margin-top: 13px;">心得体会<br/>
                <span class="button_text_small">一字一句尽是经验之谈</span>
            </div>
        </div>
            </span>
            <div class="frame_info_right">
                <div class="name">shawve的名片</div>
                <div class="line"></div>
                <div class="detail">职业：{{pInformation.job}}<br/>
                    现居：{{pInformation.livePosition}}<br/>
                    工作室：5k3<br/>
                    Email: {{pInformation.email}}
                </div>
            </div>
        </div>


        <div class="frame_file">
            <div class="frame_file_left">
                <div class="frame_file_left_menu">
                    <div class="text_menu" style="margin-left: 40px;">日记</div>
                    <div class="text_menu" style="margin-left: 136px;">程序人生</div>
                    <div class="text_menu" style="margin-left: 136px;">笔记</div>
                </div>
                <div class="frame_file_left_detail">
                    <div class="frame_file_left_detail_picture">
                        <img src="" class="picture_file"/>
                        <div class="text_file">springMVC文件的上传下载</div>
                    </div>
                    <div class="frame_file_left_detail_picture">
                        <img src="" class="picture_file"/>
                        <div class="text_file">springMVC文件的上传下载</div>
                    </div>
                    <div class="frame_file_left_detail_picture">
                        <img src="" class="picture_file"/>
                        <div class="text_file">springMVC文件的上传下载</div>
                    </div>
                    <div class="frame_file_left_detail_picture">
                        <img src="" class="picture_file"/>
                        <div class="text_file">springMVC文件的上传下载</div>
                    </div>
                    <div class="frame_file_left_detail_picture">
                        <img src="" class="picture_file"/>
                        <div class="text_file">springMVC文件的上传下载</div>
                    </div>
                    <div class="frame_file_left_detail_picture">
                        <img src="" class="picture_file"/>
                        <div class="text_file">springMVC文件的上传下载</div>
                    </div>
                </div>
            </div>
            <div class="frame_file_right">
                <div class="text_update">最近更新</div>
                <div class="line_file"></div>
                <div class="text_update_down">个人经历：</div>
                <div class="text_update_file" v-for="(experience,index) in experiences" :key="index">{{experience.name}}</div>
                <div class="text_update_down">笔记：</div>
                <div class="text_update_file" v-for="(note,index) in notes" :key="index">
                    {{note.name}}
                </div>
                <div class="text_update_down">心得体会：</div>
                <div class="text_update_file" v-for="(harvest,index) in harvests" :key="index">{{harvest.name}}</div>
            </div>
        </div>
    </div>
</div>
<script>
    new Vue({
        el: "#app",
        data: {
            screenSize: {
                height: 1000,
                width: 1980
            },
            screenHeight: 1000,
            pInformation: {},   //个人信息
            experiences:[{name:"暂无数据"},],
            //笔记
            notes:[{name:"暂无数据"},],
            //个人收获
            harvests:[{name:"暂无数据"},],


        },
        mounted() {
            // 获取数据
            this.getInformation();
            //获取屏幕大小
            this.getScreenSize();
        },
        methods: {
            /**
             * @Author shawve
             * @Description //TODO 获取个人信息
             * @Date 18:01 2020/3/25
             * @Param
             * @return
             **/
            getInformation: function () {
                var that = this;
                axios({
                    method: 'POST',
                    url: 'http://localhost:8080/website_war_exploded/index/getInformations',
                    // data:that.pInformation,
                    // ContentType: 'application/json;charset=utf-8',
                }).then(function (response) {
                    that.pInformation = response.data[0];
                    console.log(that.pInformation)
                    console.log(that.notes)
                }).catch(function (error) {
                    console.log(error)
                });
            },

            /**
             * @Author shawve
             * @Description //TODO 获取屏幕大小
             * @Date 18:24 2020/3/25
             * @Param
             * @return
             **/
            getScreenSize: function (e) {
                var that = this;
                that.screenSize.width=document.body.clientWidth-23;
                that.screenSize.height = document.body.clientHeight;
                console.log("width"+that.screenSize.width)
                console.log("height"+that.screenSize.height)
            }

        }
    })
</script>
</body>
</html>
