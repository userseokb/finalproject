<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <!-- 상단 Navigation-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container px-4 px-lg-5">
            <a class="navbar-brand" href="#!">
                <img src="image/logo.png" alt="logo" width="110px">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="#!">All Products</a></li>
                            <li>
                                <hr class="dropdown-divider" />
                            </li>
                            <li><a class="dropdown-item" href="#!">Popular Items</a></li>
                            <li><a class="dropdown-item" href="#!">New Arrivals</a></li>
                        </ul>
                    </li>
                </ul>
                <button class="btn btn-outline-dark" onclick="location.href='login.html'">
                    <i class="bi-person-circle"></i>
                    로그인
                </button>
            </div>
        </div>
    </nav>


    <!-- 중앙 메인 컨테이너 -->
    <div class="mypage-container">
        <!-- 좌측 사이드바 -->
        <div class="mypage-sidebar">
            <div class="user-private-info">
                <ul class="sidebar-grade">
                    <li>등급 : </li>
                    <li>다음등급까지 :</li>
                </ul>
            </div>
            <ul class="sidebar-nav">
                <li><a href="mypage.html">마이 페이지</a></li>
                <li><a href="personalInfomation.html">회원 정보 변경</a></li>
                <li><a href="orderHistory.html">주문 내역 조회<br>및 리뷰 작성</a></li>
                <li><a href="">Q&A(1:1문의)</a></li>
            </ul>
        </div>

        <!-- 사이드바 제외 영역 -->
        <div class="mypage-content">

            <!-- 상단 마이페이지 헤더 -->
            <div class="mypage-header">
                <div></div>
                <div><a href=""><i class="bi-cart"></i> 장바구니 : </a></div>
                <div><a href=""><i class="bi-cash-stack"></i> 포인트 : </a></div>
            </div>

            <!-- 마이페이지 컨텐츠 영역 -->
            <div class="mypage-content-detail">

                <!-- 기본 마이페이지 진입시 표 -->
                <table class="mypage-table table-text-center">
                    <tr>
                        <th>상품 정보</th>
                        <th>주문 일자</th>
                        <th>주문번호</th>
                        <th>수량/금액</th>
                        <th>주문상태</th>
                    </tr>

                    <!-- c태그 반복영역 -->
                    <tr>
                        <td>1</td>
                        <td>2</td>
                        <td>3</td>
                        <td>4</td>
                        <td>5</td>
                    </tr>
                    <!-- 반복 여기까지 -->
                </table>
            </div>
        </div>
    </div>

    <!-- Footer-->
    <footer class="py-5 bg-dark">
        <div class="container">
            <p class="m-0 text-center text-white">Copyright &copy; Korea Traditional 2023</p>
        </div>
    </footer>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
</body>

</html>