<%@ page import="com.jsu.bean.Buyer" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>在线拍卖系统</title>
    <link rel="stylesheet" href="css/HomePage.css" />
    <link rel="stylesheet" href="css/SerchBox.css" />
    <link rel="stylesheet" href="css/CategoryStyle.css" />

    <script type="text/javascript" src="js/jquery-2.1.0.js" ></script>
</head>
<body>
<div class="HomePageTitle">
    <!--导航栏标签-->

    <nav>
        <!--超链接标签-->
        <!-- 			<a>个人中心</a> -->
        <%
            if (session.getAttribute("buyer") == null) {
        %>
        <!-- 			<a href="login.jsp">您好,请登录</a> -->
        <a href="/commodityAuction/login.jsp"><font color="#A6686A">您好，请登录 </font></a>
        <%-- 			<a href="<%=path%>/application/reg.jsp"><font color="red">免费注册</font></a> --%>
        <%
        } else {
        %>
        <%-- 			<a href="<%=path%>/user.jsp">个人中心</a> --%>
        <a href="<%=((Buyer)session.getAttribute("buyer")).getBuyerId() %>"><font color="#A6686A">欢迎您,
                <%=((Buyer) session.getAttribute("buyer")).getBuyerName()%>
        </a>
        <a href="/commodityAuction/IndexServlet?login=no" ><font color="#A6686A"><font color="#D6686A">注销</font> </font></a>
        <%
            }
        %>
        <a href="/commodityAuction/index.jsp">拍卖网欢迎您</a>
    </nav>

</div>
<!-- 搜索框 -->
<div class="HomePageTitle2">
    <div class="serchBox">
        <form action="SerchServlet" name="search" class="search" method="post" ><br>
            <input type="text" id="serchInput" name="serchInput" placeholder="搜索"/>
            <input type="submit" id="serchBtn" value="搜索" onclick=" return SumbitJudge()"/>
        </form>
    </div>
</div>

<script type="text/javascript">
    //表单未填写完全禁止提交
    function SumbitJudge() {
// 	alert("sada");
        var input=document.getElementById("serchInput").value;
        if (!input) {
            alert("请输入搜索内容！");
            return false;
        }
        return true;
    }
</script>
<!-- 导航栏 -->
<div class="Navigation1" >
    <nav>
        <!--超链接标签-->
        <a href="/commodityAuction/NewIndex.jsp">首页</a>
        <a href="">腕表</a>
        <a href="">钱币邮票</a>
        <a href="">书籍漫画</a>
        <a href="">葡萄酒及威士忌</a>
    </nav>
</div>

<div class="watchBox">
    <div class="h1Box">
        <p class="h1">书籍漫画</p>
        <!-- 		<nav>
                <a href="#">万国手表</a>
                <a href="#">劳力士腕表</a>
                <a href="#">卡地亚腕表</a>
                <a href="#">女士腕表</a>

                <a href="#">欧米茄腕表</a>
                <a href="#">百年灵腕表</a>
                <a href="#">顶级名表</a>
                <a href="#">浪琴腕表</a>
                </nav> -->
    </div>
    <div class="watchBox2" id="watchBox2">
        <p class="h2">浏览所有拍品</p>
        <!-- 			<div> -->
        <!-- 			<img alt="" src=""> -->
        <!-- 			<p> </p> -->
        <!-- 			<p class="p2" id=""></p> -->
        <!-- 			</div> -->
    </div>
</div>

<script type="text/javascript" src="js/CreateBook.js" ></script>
</body>
</html>