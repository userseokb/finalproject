<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>전통주 양조장</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="../resources/css/styles.css" rel="stylesheet" />
        <script src="/resources/jquery/jquery-3.3.1.min.js"></script>
    </head>
    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#!">
                    <img src="../resources/image/logo.png" alt="logo" width="110px">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#!">All Products</a></li>
                                <li><hr class="dropdown-divider" /></li>
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
        <!-- Product section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                    <div class="col-md-6"><img class="card-img-top mb-5 mb-md-0" src=../resources/image/seoulsnight.png alt="..." /></div>
                    <div class="col-md-6">
                        <div class="small mb-1">분류: 소주/증류주</div>
                        <h1 class="display-5 fw-bolder">서울의 밤 매실증류주 25도 375ml
                        </h1>
                        <div class="fs-5 mb-5">
                            <br>
                            <h5>판매가 : ₩7,900</h5>
                            <br>
                            <h5>제조사 : 더한</h5>
                            <br>
                            <h5>원산지 : 한국</h5>
                            <br>
                            <h5>구매제한 : 1주문 당 100병</h5>
                            <br>
                            <h5>적립 포인트 : +750p (₩1,000당 50포인트)</h5>
                            <br>
                            <h5>배송비 : ₩3,000 (₩30,000이상 주문 시 무료배송)</h5>
                        </div>



                        <div class="d-flex" > <!--수량버튼, 장바구니, 바로구매 -->
                            <button type ="button" class="plus">+</button>
                            <input class="form-control " id="inputQuantity" type="num" value="1" style="max-width: 3rem" />
                            <button type="button" class="minus">-</button>

                            <button class="btn btn-outline-dark flex-shrink-0" type="button">
                                <i class="bi-cart-fill me-1"></i>
                                장바구니
                            </button>
                            <button class="btn btn-outline-dark flex-shrink-0" type="button">
                                 <i class="bi bi-cash"></i>
                                바로구매
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- 상세정보 -->
        <section class="py-5 bg-light">
            <div class="container px-4 px-lg-5 mt-5">
                <h2 class="fw-bolder mb-4">상품 상세정보</h2>
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <img class="card-img-top mb-5 mb-md-0" src=../resources/image/sndetail1.png  alt="..." />
                    <!-- 글로 작성시 p태그 사용  <p></p>   -->
                </div>
            </div>
        </section>

        <!--상품 후기 -->
        <section class="mb-5">
            <div class="card bg-light">
    
                <!-- 리뷰 전체 조회 -->
                <div class="card m-3" th:each="review : ${reviews}" th:id="|review-${review.id}|" >
                    <div th:replace="~{review/reviews::reviewHeader(
                            ${review.getId()},
                            ${item.getId()},
                            ${review.getNickname()},
                            ${review.getStar()},
                            ${review.getComment()})}"></div>
                    <div th:replace="~{review/reviews::reviewBody(${review.getComment()})}"></div>
                </div>
            </div>
        </section>
        
     
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2023</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
