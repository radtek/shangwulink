﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="HF.Cloud.CustomerWeb.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>易维客</title>
    <link type="text/css" href="/css/style.css" rel="stylesheet" />
    <script type="text/javascript" src="/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="/js/cient.js"></script>
    <script type="text/javascript" src="/js/ShowDialog.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#quitlogin').click(function () {
                document.cookie = "UserID=-1;path=/";
                document.cookie = "UserCode=-1;path=/";
                document.location.href = "/login.aspx";//退出登录，后续做其他处理
            });
            $('#addrepair').click(function () {
                top.layer.open({
                    type: 2,
                    title: '一键报修',
                    shadeClose: true,
                    shade: 0.5,
                    area: ['500px', '500px'],
                    content: '/Repair/OneKeyAddRepair.aspx'
                });
            });
            $('#addsheet').click(function () {
                top.layer.open({
                    type: 2,
                    title: '一键下单',
                    shadeClose: true,
                    shade: 0.5,
                    area: ['500px', '500px'],
                    content: '/Sheet/OneKeyAddSheet.aspx'
                });
            });
            //账户信息
            $("#accountinfo").click(function () {
                $("#mainFrame").attr("src", "/CustomerInfo/AccountInfo.aspx");
            });
            //成员管理
            $("#userinfo").click(function () {
                $("#mainFrame").attr("src", "/CustomerInfo/MemberInfo.aspx");
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="cient-top">
            <div <%=logoHtml %>></div>
            <div class="scale">
                <div class="scale-img"></div>
            </div>
            <p class="cient-slogan font-color-w">
                Eweic服务展示中心 &nbsp;&nbsp;|&nbsp;&nbsp; <span>
                    <asp:Literal ID="lblCustomerName" runat="server"></asp:Literal></span>
            </p>
            <div class="cient-user">
                <div class="user-img"></div>
                <p class="font-color-w" style="overflow: hidden;">
                    <asp:Literal ID="lblUserName" runat="server"></asp:Literal>
                </p>
            </div>
            <div class="cient-repairs" id="ops">
                <div class="repairs-img"></div>
               <%-- <p class="font-color-w" id="onekey" style="cursor: pointer;">
                    一键报修
                </p>--%>
            </div>
            <div class="cient-repairs" style="width: 250px;">
                <p class="font-color-w" id="changemain" style="cursor: pointer;">
                    服务商&nbsp;&nbsp;
                    <asp:DropDownList Style="width: 180px;" runat="server" ID="ddlMain" OnSelectedIndexChanged="ddlMain_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                </p>
            </div>
        </div>
        <div class="user-message">
            <ul>
                <li id="accountinfo">帐号信息</li>
                <li id="quitlogin">退出</li>
            </ul>
        </div>
        <div class="ops-message">
            <ul>
                <li id="addrepair">一键报修</li>
                <li id="addsheet">一键下单</li>
            </ul>
        </div>
        <div class="cient-left cient-left-min">
            <ul>
                <a href="#">
                    <li class="home"><span></span>
                        <p>首页</p>
                    </li>
                </a>
                <a href="#">
                    <li class="bill"><span></span>
                        <p>工单中心</p>
                    </li>

                </a>
                <a href="#">
                    <li class="equipment"><span></span>
                        <p>设备查看</p>
                    </li>
                </a>
                <a href="#">
                    <li class="statistics"><span></span>
                        <p>统计中心</p>
                    </li>
                </a>
                <a href="#">
                    <li class="set"><span></span>
                        <p>巡检</p>
                    </li>
                </a>
                <a href="#">
                    <li class="Repair"><span></span>
                        <p>维修</p>
                    </li>
                </a>
                <a href="#">
                    <li class="equipment"><span></span>
                        <p>网点地图</p>
                    </li>
                </a>
            </ul>
        </div>
        <div class="nav-title">
            <p></p>
        </div>
        <div class="cient-main">
            <iframe id="mainFrame" name="mainFrame" style="width: 100%; height: 100%; overflow: auto;" frameborder="no" border="0" marginwidth="0" marginheight="0" src="/homePage.aspx"></iframe>
        </div>
    </form>
</body>
</html>
