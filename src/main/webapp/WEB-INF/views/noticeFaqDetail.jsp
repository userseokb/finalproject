<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>전통주 양조장</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="css/styles.css" rel="stylesheet" />
    <link href="css/traditional-main.css" rel="stylesheet" />
</head>

<body>
    <%@ include file="mainNav.jsp" %>

    <main>
        <div class="main-container">
            <h4>공지사항orFAQ</h4>
            <table class="main-table">
                <tr>
                    <th>제목</th>
                    <td colspan="2">test title</td>
                </tr>
                <tr>
                    <th>작성자</th>
                    <th>작성일자 : yyyy-mm-dd</th>
                    <th>조회수 : </th>
                </tr>
                <!-- c태그 반복영역 -->
                <tr>
                    <td colspan="3">
                        공지,FAQ내용<br>
                        Lorem ipsum, dolor sit amet consectetur adipisicing elit. Natus odio molestiae optio provident.
                        Aspernatur odit unde nesciunt. Aperiam earum possimus accusantium odit, eligendi fuga repellat
                        consequatur quam, rerum asperiores quaerat consequuntur illo maiores ex, unde veniam totam
                        distinctio et soluta.
                        </tf>
                </tr>
                <!-- 반복 종료 -->
            </table>
            <div>
                <input type="button" value="목록으로" class="change-option-btn float-right" onclick="history.back()">
            </div>
        </div>
    </main>
	<%@ include file="mainFooter.jsp" %>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
</body>

</html>