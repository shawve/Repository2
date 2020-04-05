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
    <title></title>
    <style type="text/css">
        body{
            margin: 0px;
        }
        .zhezhao{
            position: fixed;
            left: 0px;
            top: 0px;
            background: #000;
            width: 100%;
            height: 100%;
            opacity: 0.5;
        }
        .tankuang{
            position: relative;
            background: #fff;
            width: 50%;
            height: 80%;
            border-radius: 5px;
            margin: 5% auto;
        }
        #header{
            height: 40px;
        }
        #header-right{
            position: absolute;
            width: 25px;
            height: 25px;
            border-radius: 5px;
            background: red;
            color: #fff;
            right: 5px;
            top: 5px;
            text-align: center;
        }
    </style>
</head>
<body>
<button type="button" onclick="dianwo()">点我</button>
<div class="zhezhao" id='zhezhao'>
    <div class="tankuang">
        <div id="header">
            <span>我是弹窗</span>
            <div id="header-right" onclick="hidder()">x</div>
        </div>
    </div>
</div>
<script type="text/javascript">
    document.getElementById('zhezhao').style.display="none";
    function dianwo(){
        document.getElementById('zhezhao').style.display="";
    }
    function hidder(){
        document.getElementById('zhezhao').style.display="none";
    }
</script>
</body>
</html>
