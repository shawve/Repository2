<%@ taglib prefix="v-bind" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>html模块</title>
    <link rel="stylesheet" href="../css/HTMLModular.css">
    <script src="../js/vue.js" type="application/javascript"></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <script type="text/javascript" src="//cdn.bootcss.com/vue-resource/1.3.4/vue-resource.min.js"></script>
    <script type="text/javascript" src="//cdn.bootcss.com/vue-router/2.6.0/vue-router.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/velocity/1.2.3/velocity.min.js"></script>
</head>
<body>
<div class="frame" id="app">
    <div class="colorful"></div>
    <div class="title_text">前端</div>
    <div class="frame_white">
        <div style="display: flex">
            <div class="frame_icon_title">
                <div style="display: flex">
                    <img src="../images/HTMLModular/HTML@2x.png" class="icon"/>
                    <div class="text_title">HTML5+CSS+JAVASCRIPT</div>
                </div>
                <div class="frame_question">
                    <div class="text_question">你要不要犒赏我一包辣条</div>
                    <div class="frame_answer">
                        <button class="button_answer" @mouseenter="mouseenter" @click="answer">{{one}}</button>
                        <button class="button_answer" @mouseenter="mouseenter" @click="answer">{{two}}</button>
                    </div>
                </div>
                <div class="popup" v-if="signal" @touchmove.prevent>
                    <div class="tanchuang"></div>
                    <button class="close" @click="close">x</button>
                </div>
            </div>
            <div class="move_block" @click="moveBlock">
            </div>
        </div>
        <div class="frame_moveColor" :style="{top:moveHeight+'px',left:moveLeft + 'px'}" @scroll="scroll">
            人类最美丽的时刻是——<span style="color:#15D327">刻苦学习</span>的背影，
            那一声不经意间的<span style="color:#F01313">自问自答</span>，以及<span style="color: #381BC5">解决难题</span>
            时的欣喜表情。我喜欢学习，更喜欢<span style="color:#201D1D ">专研技术</span>
            。或许，这就是我<span style="color:#1EC4EB ">坚持</span>走这条<span>“秃头之路”</span>的动力吧
        </div>
        <transition name="dios" @click="getData">
            <div class="pictures" v-show="show":style="{top:dioTop +'px'}">
                <img class="move_dio1"  src="../images/dio.png"/>
                <img class="move_dio2"  src="../images/dio.png"/>
                <img class="move_dio3"  src="../images/dio.png"/>
                <img class="move_dio4"  src="../images/dio.png"/>
            </div>
        </transition>
        <div class="frame_orange"></div>
        <div class="frame_down">
            <div class="frame_fileList">
                <div class="frame_file" v-for="article in articles">
                    <img src="" class="picture_file"/>
                    <div class="text_fileName">{{article.name}}</div>
                    <div class="frame_file_down">
                        <button>打开</button>
                        <button>下载</button>
                    </div>
                </div>
            </div>
            <div class="frame_coffee">
                <img src="" class="QRcode"></img>
                <div class="text_thanks">觉得有用的话不妨帮我点包辣条
                </div>
                <div class="frame_util">
                    <div class="frame_item" @click="Goback">
                        <img src="../images/HTMLModular/return@2x.png" class="home"/>
                        <div class="text_icon">返回上一页</div>
                    </div>
                    <a class="frame_item" href="http://localhost:8080/website_war_exploded/index/"
                       style="text-decoration:none;">
                        <img src="../images/HTMLModular/index@2x.png" class="home"/>
                        <div class="text_icon">返回主页</div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    new Vue({
        el: "#app",
        data: {
            pInformation: [{
                userName: "shawve",
                userSex: "man"
            }, {
                userName: "chhoyure",
                userSex: "sb"
            }],
            fileName: "shawve",
            isShow: true,
            // nowIndex:0,
            moveHeight: "",
            scrollYO: 0,
            articles:[{},{}],
            one: "要",
            two: "不要",
            signal: false,
            show: false,
            dioTop: 571,
            moveLeft: 155,
            isInsert: false,

        },
        mounted() {
            window.addEventListener('scroll', () => {
                this.scroll(window.scrollY)
            })
            this.getData();
            this.moveColorSet();
        },

        methods: {
            /**
             * @Author shawve
             * @Description //TODO 返回上一页
             * @Date 8:56 2020/4/3
             * @Param
             * @return
             **/
            Goback:function(e){
                window.history.back();
            },
            /**
             * @Author shawve
             * @Description //TODO 颜色快移动
             * @Date 22:04 2020/3/28
             * @Param
             * @return
             **/
            moveBlock: function (e) {
                var that = this;
            },
            /**
             * @Author shawve
             * @Description //TODO 允许页面滚动事件move和禁止页面滚动事件stop
             * @Date 22:01 2020/3/28
             * @Param
             * @return
             **/
            move() {
                var mo = function () {
                    e.preventDefault();
                };
                document.body.style.overflow = '';//出现滚动条
                document.addEventListener("touchmove", mo, true);
            },
            stop() {
                var mo = function () {
                    e.preventDefault();
                };
                document.body.style.overflow = 'hidden';
                document.addEventListener("touchmove", mo, false);//禁止页面滑动
            },
            /**
             * @Author shawve
             * @Description //TODO 答案选择
             * @Date 13:22 2020/3/26
             * @Param
             * @return
             **/
            answer: function (e) {
                console.log(e)
                var that = this;
                that.signal = true;
                this.stop();
            },
            close: function (e) {
                var that = this;
                that.signal = false;
                this.move();
            },
            /**
             * @Author shawve
             * @Description //TODO 问题的鼠标划过事件
             * @Date 11:48 2020/3/26
             * @Param
             * @return
             **/
            mouseenter: function (e) {
                var that = this;
                console.log(e.target.innerHTML)
                //交换内容
                if (e.target.innerHTML == "不要") {
                    var temp = that.two;
                    that.two = that.one;
                    that.one = temp;
                } else {
                    // console.log("sss")
                }
            },
            /**
             * @Author shawve
             * @Description //TODO 监听滑动
             * @Date 22:26 2020/3/25
             * @Param
             * @return
             **/
            scroll: function (scrollY) {
                var styles = document.styleSheets[0].cssRules;
                var style = document.styleSheets[0];
                var that = this;
                var index = 0;
                scrollYN = scrollY - 50;
                if (scrollYN > 130 && scrollYN <= 423) {
                    that.moveHeight = scrollYN;   //随滚动条滚动
                    if (scrollYN >= 400 && (scrollYN - that.scrollYO) > 0) {
                        that.moveLeft = 10;
                        that.show = true;
                        that.dioTop = 371;
                    } else if (scrollYN < 410 && (scrollYN - that.scrollYO) < 0) {
                        that.moveLeft = 155;
                        that.dioTop = 471;
                        that.show = false;
                    }

                }
                that.scrollYO = scrollYN;
            },

            /**
             * @Author shawve
             * @Description //TODO 获取文章数据
             * @Date 22:11 2020/3/25
             * @Param
             * @return
             **/
            getData: function () {
                var that = this;
                axios({
                    method: 'POST',
                    url: 'http://localhost:8080/website_war_exploded/information/Get?type=HTMLModular',
                    // ContentType: 'application/json;charset=utf-8',
                }).then(function (res) {
                    console.log(res.data)
                    that.articles = res.data.articles;
                }).catch(function (error) {
                    console.log(error)
                });
            },

            /**
             * @Author shawve
             * @Description //TODO 移动块
             * @Date 9:54 2020/3/30
             * @Param
             * @return
             **/
            moveColorSet: function (e) {
                var style = document.styleSheets[0];
                var styles = document.styleSheets[0].cssRules;
                var index = 0;
                for (var i = 0; i < styles.length; i++) {
                    // console.log(styles[i].selectorText)
                    if (styles[i].selectorText == ".move_block") {
                        index = i;
                    }
                }
                //添加自定义动画
                style.insertRule("@keyframes move{" +
                    "0%{" +
                    "transform:translate3d(0px,50px,0px)scale(1.0,1.0)" +
                    "}" +
                    "25%{" +
                    "transform:translate3d(100px,50px,0px)scale(1.25,1.25)" +
                    "}" +
                    "50%{" +
                    "transform:translate3d(100px,100px,0px)scale(1.5,1.5)" +
                    "}" +
                    "75%{" +
                    "transform:translate3d(0px,100px,0px)scale(1.25,1.25)" +
                    "}" +
                    "100%{" +
                    "transform: translate3d(0px,50px,0px)scale(1.0,1.0)" +
                    "}" +
                    "}", index + 1)
                // console.log(document.styleSheets[0].cssRules)
            }
        }
    })
</script>
</body>
</html>
