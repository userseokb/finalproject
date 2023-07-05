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

<body onload="deliveryStatus()">
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

                <!-- 주문내역 조회 -->
                <table class="mypage-table table-text-center">
                    <tr>
                        <th>주문 날짜</th>
                        <th>주문 상세</th>
                        <th>배송 현황</th>
                    </tr>
                    <tr>
                        <td>2023-07-04</td>
                        <td>for test</td>
                        <td class="delivery-status">배송시작</td>
                    </tr>
                    <tr>
                        <td>2023-07-04</td>
                        <td>for test</td>
                        <td class="delivery-status">입금확인</td>
                    </tr>
                    <tr>
                        <td>2023-07-04</td>
                        <td>for test</td>
                        <td class="delivery-status">배송완료</td>
                    </tr>
                    <tr>
                        <td>2023-07-04</td>
                        <td>for test</td>
                        <td class="delivery-status">출고처리중</td>
                    </tr>
                    <tr>
                        <td>2023-07-04</td>
                        <td>for test</td>
                        <td class="delivery-status">구매확정</td>
                    </tr>
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
    <script>
        // 배송상태에 따른 버튼 세팅
        function deliveryStatus(){
            ds = document.querySelectorAll('.delivery-status');
            for(let i=0; i<ds.length; i++){
                switch (ds[i].innerText){
                    case "입금확인": {
                        let btn = document.createElement("input");
                        let div = document.createElement("div");
                        btn.setAttribute("type","button");
                        btn.setAttribute("class","change-option-btn");
                        btn.setAttribute("value","주문취소");
                        div.appendChild(btn);
                        ds[i].appendChild(div);
                    }break;
                    case "배송완료": {
                        let btn1 = document.createElement("input");
                        let btn2 = document.createElement("input");
                        let div = document.createElement("div");
                        btn1.setAttribute("type","button");
                        btn1.setAttribute("class","change-option-btn");
                        btn1.setAttribute("value","환불/교환");
                        btn2.setAttribute("type","button");
                        btn2.setAttribute("class","change-option-btn");
                        btn2.setAttribute("value","구매확정");
                        div.appendChild(btn1);
                        div.appendChild(btn2);
                        ds[i].appendChild(div);
                    }break;
                    case "구매확정": {
                        let btn = document.createElement("input");
                        let div = document.createElement("div");
                        let a = document.createElement("a");
                        btn.setAttribute("type","button");
                        btn.setAttribute("class","change-option-btn");
                        btn.setAttribute("value","리뷰작성");
                        a.setAttribute("href","review.html");
                        div.appendChild(btn);
                        a.appendChild(div);
                        ds[i].appendChild(a);
                    }break;
                }
            }
        }
    </script>
</body>

</html>