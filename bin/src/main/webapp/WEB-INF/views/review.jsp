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
                <li><a href="">마이 페이지</a></li>
                <li><a href="">회원 정보 변경</a></li>
                <li><a href="">주문 내역 조회<br>및 리뷰 작성</a></li>
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
                <!-- 리뷰 작성 -->
                <table class="mypage-table first-row-text-center">
                    <tr>
                        <td>상품</td>
                        <td>test</td>
                    </tr>
                    <tr>
                        <td>제목</td>
                        <td>무진장 맛있는 막걸리</td>
                    </tr>
                    <tr>
                        <td>별점</td>
                        <td>
                            <i class="bi-star" onclick="rateCalc(this)" value="1"></i>
                            <i class="bi-star" onclick="rateCalc(this)" value="2"></i>
                            <i class="bi-star" onclick="rateCalc(this)" value="3"></i>
                            <i class="bi-star" onclick="rateCalc(this)" value="4"></i>
                            <i class="bi-star" onclick="rateCalc(this)" value="5"></i>
                        </td>
                    </tr>
                    <tr>
                        <td>용도</td>
                        <td>
                            <label><input type="radio" name="usage" id=""> 선물용</label>
                            <label><input type="radio" name="usage" id=""> 직접음용</label>
                        </td>
                    </tr>
                    <tr>
                        <td>대상자 연령</td>
                        <td>
                            <label><input type="radio" name="age" id=""> 20</label>
                            <label><input type="radio" name="age" id=""> 30</label>
                            <label><input type="radio" name="age" id=""> 40</label>
                            <label><input type="radio" name="age" id=""> 50</label>
                            <label><input type="radio" name="age" id=""> 60이상</label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <textarea class="review-textarea" placeholder="리뷰를 작성해주세요(500자 이하)"
                                onkeyup="textLengthCalc(this)" maxlength="500"></textarea>
                            <div class="float-right small" id="subtext">500</div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input class="float-left" type="file">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="button" value="리뷰등록" class="change-option-btn">
                        </td>
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
        
        // 리뷰 글자수 제한
        function textLengthCalc(text) {
            let textLength = text.value.length;
            let subText = document.getElementById("subtext");
            subText.innerText = 500 - textLength;
        }

        // 별 갯수 확인
        function rateCalc(rate) {
            let starsFill = document.querySelectorAll(".bi-star-fill");
            let tmp = rate.getAttribute("value");
            // 별이 이미있다면 초기화
            if (starsFill.length > 0) {
                for (let i = 0; i < starsFill.length; i++) {
                    starsFill[i].setAttribute("class", "bi-star");
                }
                let stars = document.querySelectorAll(".bi-star");
                for (let i = 0; i < tmp; i++) {
                    stars[i].setAttribute("class", "bi-star-fill");
                }
            } else {
                let stars = document.querySelectorAll(".bi-star");
                for (let i = 0; i < tmp; i++) {
                    stars[i].setAttribute("class", "bi-star-fill");
                }
            }
        }

        // let getAll = (target) => document.querySelectorAll(target);
        // let buttons = getAll('.usage');
        // buttons.forEach((button) => {
        //     button.addEventListener('click', console.log(1));
        // });


        {
            // 라디오 버튼 색상 변경
            let usage = document.querySelectorAll("input[name='usage']");
            let age = document.querySelectorAll("input[name='age']");
            for (let i = 0; i < usage.length; i++) {
                usage[i].addEventListener("click", () => {
                    for (let i = 0; i < usage.length; i++) {
                        usage[i].parentElement.style.color = "grey";
                    }
                    if (usage[i].checked) {
                        usage[i].parentElement.style.color = "black";
                    }
                });
            }
            for (let i = 0; i < age.length; i++) {
                age[i].addEventListener("click", () => {
                    for (let i = 0; i < age.length; i++) {
                        age[i].parentElement.style.color = "grey";
                    }
                    if (age[i].checked) {
                        age[i].parentElement.style.color = "black";
                    }
                });
            }
        }

    </script>
</body>

</html>