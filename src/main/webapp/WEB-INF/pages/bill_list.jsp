<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>超市账单管理系统</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/public.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css"/>
</head>
<body>
<!--头部-->
<header class="publicHeader">
    <h1>超市账单管理系统</h1>
    <div class="publicHeaderR">
        <p><span>下午好！</span><span style="color: #fff21b"> Admin</span> , 欢迎你！</p>
        <a href="login.html">退出</a>
    </div>
</header>
<!--时间-->
<section class="publicTime">
    <span id="time">2015年1月1日 11:11  星期一</span>
    <a href="#">温馨提示：为了能正常浏览，请使用高版本浏览器！（IE10+）</a>
</section>
<!--主体内容-->
<section class="publicMian ">
    <div class="left">
        <h2 class="leftH2"><span class="span1"></span>功能列表 <span></span></h2>
        <nav>
            <ul class="list">
                <li id="active"><a href="billList.html">账单管理</a></li>
                <li><a href="providerList.html">供应商管理</a></li>
                <li><a href="userList.html">用户管理</a></li>
                <li><a href="password.html">密码修改</a></li>
                <li><a href="login.html">退出系统</a></li>
            </ul>
        </nav>
    </div>
    <div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>账单管理页面</span>
        </div>
        <form action="/bill/list" method="post" id="searchForm">
            <input type="hidden" name="pageNum" id="pageNum">
        <div class="search">
            <span>商品名称：</span>
            <input type="text" name="goodsName"  placeholder="请输入商品的名称"/>

            <span>供应商：</span>
            <select name="supplier.id" >
                <option value="">--请选择--</option>
                <c:forEach items="${requestScope.supplierList}" var="s">
                    <option value="${s.id}" ${bill.supplier.id eq s.id?'selected':''}>${s.name}</option>
                </c:forEach>
            </select>

            <span>是否付款：</span>
            <select name="status">

                <option value="">--请选择--</option>
                <option value="1" ${param.status eq '1'?'selected':''}>已付款</option>
                <option value="0" ${param.status eq '0'?'selected':''}>未付款</option>

            </select>

            <input type="button" value="查询" onclick="$('#searchForm').submit()"/>
            <a href="/bill/goAdd">添加订单</a>
        </div>
        </form>
        <!--账单表格 样式和供应商公用-->
        <table class="providerTable" cellpadding="0" cellspacing="0">
            <tr class="firstTr">
                <th width="10%">账单id</th>
                <th width="20%">商品名称</th>
                <th width="10%">供应商</th>
                <th width="10%">账单金额</th>
                <th width="10%">是否付款</th>
                <th width="10%">创建时间</th>
                <th width="30%">操作</th>
            </tr>

            <c:forEach items="${requestScope.pageInfo.list}" var="b">
            <tr>
                <td>${b.id}</td>
                <td>${b.goodsName}</td>
                <td>${b.supplier.name}</td>
                <td>${b.amount}</td>
                <td>${b.status eq 1?'已付款':'未付款'}</td>
                <td><fmt:formatDate value="${b.createdTime}" pattern="yyyy-MM-dd"/></td>
                <td>
                    <a href="billView.html"><img src="<%=request.getContextPath()%>/img/read.png" alt="查看" title="查看"/></a>
                    <a href="billUpdate.html"><img src="<%=request.getContextPath()%>/img/xiugai.png" alt="修改" title="修改"/></a>
                    <a href="/bill/delete?id=${b.id}" class="removeBill"><img src="<%=request.getContextPath()%>/img/schu.png" alt="删除" title="删除"/></a>
                </td>
            </tr>
            </c:forEach>
        </table>
        <div style="float:right;padding:10px">
            <a href="javascript:void(0)" onclick="goPage(1)">首页</a>
            <a href="javascript:void(0)" onclick="goPage(${pageInfo.prePage})">上一页</a>
            <a href="javascript:void(0)" onclick="goPage(${pageInfo.nextPage})">下一页</a>
            <a href="javascript:void(0)" onclick="goPage(${pageInfo.pages})">尾页</a>
        </div>
    </div>
</section>

<script type="text/javascript">
    function goPage(pn) {
        $("#pageNum").val(pn);
        $("#searchForm").submit();
    }
</script>

<!--点击删除按钮后弹出的页面-->
<div class="zhezhao"></div>
<div class="remove" id="removeBi">
    <div class="removerChid">
        <h2>提示</h2>
        <div class="removeMain">
            <p>你确定要删除该订单吗？</p>
            <a href="#" id="yes">确定</a>
            <a href="#" id="no">取消</a>
        </div>
    </div>
</div>

<footer class="footer">
</footer>

<script src="<%=request.getContextPath()%>/js/jquery.js"></script>
<script src="<%=request.getContextPath()%>/js/js.js"></script>
<script src="<%=request.getContextPath()%>/js/time.js"></script>

</body>
</html>