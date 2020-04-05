<%--
  Created by IntelliJ IDEA.
  User: shawve
  Date: 2020/3/28
  Time: 17:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>练习</title>
    <script src="../js/vue.js" type="application/javascript"></script>
    <style>
        .rotate{
            width: 150px;
            height: 150px;
            border:1px solid black;
            margin:100px 100px;
            position: relative;

        }
        .rotate img{
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            transition:all 3s;
            transform-origin:150% 150%;
            /*指定旋转中心点*/
        }
        .rotate:hover .img1{
            transform:rotate(60deg)
        }
        .rotate:hover .img2{
            transform:rotate(120deg)
        }
        .rotate:hover .img3{
            transform:rotate(180deg)
        }
        .rotate:hover .img4{
            transform:rotate(240deg)
        }
        .rotate:hover .img5{
            transform:rotate(300deg)
        }
        .rotate:hover .img6{
            transform:rotate(360deg)
        }
        .door{
            position: relative;
            width:500px;
            height: 300px;
            margin-top: 250px;
            margin-left: 500px;
            transform:translateY(-50%);
            border: 1px solid black;
            perspective: 1000px;
            background: url("../images/baby7.jpg") no-repeat center center;
            background-size: contain;

        }
        .door:hover .door-left{
            transform: rotateY(-70deg);
        }
        .door:hover .door-right{
            transform: rotateY(70deg);
        }
        .door-left,.door-right{
            top: 0;
            position: absolute;
            width: 50%;
            height: 100%;
            background-color: #F01313;
            transition: all 3s;
        }

        .door-right{
            margin-left: 50%;
            border-left: 1px solid black;
            transform-origin: right;
        }
        .door-left{
            transform-origin: left;
        }
    </style>
</head>
<body>
    <div class="rotate">
        <img src="../images/baby1.jpg" class="img1"/>
        <img src="../images/baby2.jpg" class="img2"/>
        <img src="../images/baby3.jpg" class="img3"/>
        <img src="../images/baby4.jpg" class="img4"/>
        <img src="../images/baby5.jpg" class="img5"/>
        <img src="../images/baby6.jpg" class="img6"/>
    </div>
    <div class="door">
        <div class="door-left"></div>
        <div class="door-right"></div>
    </div>

</body>
</html>
