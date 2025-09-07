<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Thông tin người dùng</title>
  <link rel="stylesheet" href="styles.css">
</head>
<body>
<div class="container">
  <h2>Thông tin từ Cookie</h2>

  <c:choose>
    <c:when test="${not empty cookie}">
      <table class="download-table">
        <tr>
          <th>Tên Cookie</th>
          <th>Giá trị</th>
        </tr>
        <c:forEach var="entry" items="${cookie}">
          <tr>
            <td><c:out value="${entry.key}" /></td>
            <td><c:out value="${entry.value.value}" /></td>
          </tr>
        </c:forEach>
      </table>
    </c:when>
    <c:otherwise>
      <p>Không tìm thấy cookie nào.</p>
    </c:otherwise>
  </c:choose>

  <div class="links">
    <a href="index.jsp">Trang chủ</a>
    <a href="register.jsp">Đăng ký lại</a>
  </div>
</div>
</body>
</html>