<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>🎵 Danh sách Album</title>
    <link rel="stylesheet" href="styles.css" />
</head>
<body>
<div class="container">
    <h1>🎵 Danh sách Album</h1>

    <c:if test="${empty products}">
        <p class="empty">Không có album nào để hiển thị.</p>
    </c:if>

    <c:if test="${not empty products}">
        <ul class="album-list">
            <c:forEach var="product" items="${products}">
                <li>
                    <a href="download.jsp?productCode=${product.productCode}">
                        <c:out value="${product.productName}" />
                    </a>
                </li>
            </c:forEach>
        </ul>
    </c:if>

    <div class="links">
        <a href="index.jsp">🏠 Về trang chủ</a>
        <a href="view_cookies.jsp">🔍 Xem thông tin Cookie</a>
    </div>
</div>
</body>
</html>