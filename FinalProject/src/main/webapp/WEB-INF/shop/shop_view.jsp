<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<!-- Breadcrumb Section Begin -->

<section class="breadcrumb-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>작품</h2>
                    <div class="breadcrumb__option">
                        <a href="./index.html">Home</a>
                        <span>상품 소개</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->
<style type="text/css">
  .starpoint_wrap {
    display: inline-block;
  }

  .starpoint_box {
    position: relative;
    background: url(https://hsecode.github.io/images_codepen/codepen_sp_star.png) 0 0 no-repeat;
    font-size: 0;
  }

  .starpoint_box .starpoint_bg {
    display: block;
    position: absolute;
    top: 0;
    left: 0;
    height: 18px;
    background: url(https://hsecode.github.io/images_codepen/codepen_sp_star.png) 0 -20px no-repeat;
    pointer-events: none;
  }

  .starpoint_box .label_star {
    display: inline-block;
    width: 10px;
    height: 18px;
    box-sizing: border-box;
  }

  .starpoint_box .star_radio {
    opacity: 0;
    width: 0;
    height: 0;
    position: absolute;
  }

  .starpoint_box .star_radio:nth-of-type(1):hover ~ .starpoint_bg,
  .starpoint_box .star_radio:nth-of-type(1):checked ~ .starpoint_bg {
    width: 10%;
  }

  .starpoint_box .star_radio:nth-of-type(2):hover ~ .starpoint_bg,
  .starpoint_box .star_radio:nth-of-type(2):checked ~ .starpoint_bg {
    width: 20%;
  }

  .starpoint_box .star_radio:nth-of-type(3):hover ~ .starpoint_bg,
  .starpoint_box .star_radio:nth-of-type(3):checked ~ .starpoint_bg {
    width: 30%;
  }

  .starpoint_box .star_radio:nth-of-type(4):hover ~ .starpoint_bg,
  .starpoint_box .star_radio:nth-of-type(4):checked ~ .starpoint_bg {
    width: 40%;
  }

  .starpoint_box .star_radio:nth-of-type(5):hover ~ .starpoint_bg,
  .starpoint_box .star_radio:nth-of-type(5):checked ~ .starpoint_bg {
    width: 50%;
  }

  .starpoint_box .star_radio:nth-of-type(6):hover ~ .starpoint_bg,
  .starpoint_box .star_radio:nth-of-type(6):checked ~ .starpoint_bg {
    width: 60%;
  }

  .starpoint_box .star_radio:nth-of-type(7):hover ~ .starpoint_bg,
  .starpoint_box .star_radio:nth-of-type(7):checked ~ .starpoint_bg {
    width: 70%;
  }

  .starpoint_box .star_radio:nth-of-type(8):hover ~ .starpoint_bg,
  .starpoint_box .star_radio:nth-of-type(8):checked ~ .starpoint_bg {
    width: 80%;
  }

  .starpoint_box .star_radio:nth-of-type(9):hover ~ .starpoint_bg,
  .starpoint_box .star_radio:nth-of-type(9):checked ~ .starpoint_bg {
    width: 90%;
  }

  .starpoint_box .star_radio:nth-of-type(10):hover ~ .starpoint_bg,
  .starpoint_box .star_radio:nth-of-type(10):checked ~ .starpoint_bg {
    width: 100%;
  }

  .blind {
    position: absolute;
    clip: rect(0, 0, 0, 0);
    margin: -1px;
    width: 1px;
    height: 1px;
    overflow: hidden;
  }
</style>
<!-- Product Details Section Begin -->
<section class="product-details spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6">
                <div class="product__details__pic">
                    <div class="product__details__pic__item">
                        <img class="product__details__pic__item--large"
                             src="../photo/${sdto.uploadfile1}" alt="">
                    </div>
                    <div class="product__details__pic__slider owl-carousel">
                        <img data-imgbigurl="../photo/${sdto.uploadfile1}" src="../photo/${sdto.uploadfile1}" alt="">
                        <img data-imgbigurl="../photo/${sdto.uploadfile2}" src="../photo/${sdto.uploadfile2}" alt="">
                        <img data-imgbigurl="../photo/${sdto.uploadfile3}" src="../photo/${sdto.uploadfile3}" alt="">
                        <img data-imgbigurl="../photo/${sdto.uploadfile4}" src="../photo/${sdto.uploadfile4}" alt="">
                        <img data-imgbigurl="../photo/${sdto.uploadfile5}" src="../photo/${sdto.uploadfile5}" alt="">
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="product__details__text">

                    <a href="#"> <span><img src="${root}/img/pro.jpg">${sdto.name}<i
                            class="fa fa-angle-right"></i></span>
                    </a>
                    <h3>${sdto.title}</h3>
                    <div class="product__details__rating">
                        <div class="starpoint_wrap">
                            <div class="starpoint_box">
                                <label for="starpoint_1" class="label_star" title="0.5"><span
                                        class="blind">0.5점</span></label> <label for="starpoint_2"
                                                                                 class="label_star"
                                                                                 title="1"><span
                                    class="blind">1점</span></label>
                                <label for="starpoint_3" class="label_star" title="1.5"><span
                                        class="blind">1.5점</span></label> <label for="starpoint_4"
                                                                                 class="label_star"
                                                                                 title="2"><span
                                    class="blind">2점</span></label>
                                <label for="starpoint_5" class="label_star" title="2.5"><span
                                        class="blind">2.5점</span></label> <label for="starpoint_6"
                                                                                 class="label_star"
                                                                                 title="3"><span
                                    class="blind">3점</span></label>
                                <label for="starpoint_7" class="label_star" title="3.5"><span
                                        class="blind">3.5점</span></label> <label for="starpoint_8"
                                                                                 class="label_star"
                                                                                 title="4"><span
                                    class="blind">4점</span></label>
                                <label for="starpoint_9" class="label_star" title="4.5"><span
                                        class="blind">4.5점</span></label> <label for="starpoint_10"
                                                                                 class="label_star"
                                                                                 title="5"><span
                                    class="blind">5점</span></label>

                                <span class="starpoint_bg"></span>
                            </div>
                        </div>
                        <span>(18개의 리뷰)</span>
                    </div>
                    <div class="product__details__price">${sdto.shopprice}</div>
                    <p>${sdto.shopsub}</p>
                    <form method="post" action="${root}/cart/insert">
                        <input type="hidden" name="shop_num" value="${sdto.num}">
                        <ul class="view_option_select">
                            <li class="view_option_select_su"><b>수량</b> <span>주문시
								제작</span></li>
                            <li><b>배송비</b> <span>2,500원 <samp>(모든 지역 동일)</samp></span></li>
                            <li><b>배송시작</b> <span>평균 1일, 최대 30일 이내</span></li>
                            <li><b>옵션선택</b>
                                <select id="selectoption" name="sub_option" onchange="NumChange(this.value)">
                                    <option>--선택안함--</option>
                                    <option value="${sdto.subprice1}">${sdto.suboption1}</option>
                                    <option value="${sdto.subprice2}">${sdto.suboption2}</option>
                                    <option value="${sdto.subprice3}">${sdto.suboption3}</option>
                                    <option value="${sdto.subprice4}">${sdto.suboption4}</option>
                                    <option value="${sdto.subprice5}">${sdto.suboption5}</option>
                                </select>
                            </li>
                        </ul>
                        <div class="product__details__text__option__list">
                            <p id="result">옵션</p>
                            <div class="product__details__quantity">
                                <div class="quantity">
                                    <div class="pro-qty">
                                        <span class="dec qtybtn">-</span>
                                        <input type="text" name="shop_qty" id="subnum" value="1">
                                        <span class="inc qtybtn">+</span>
                                    </div>
                                </div>
                            </div>
                            <div class="product__details__quantity">
                                <div class="quantity-del">
                                    <span id="quantity-del-dan"></span>
                                    <button>X</button>
                                </div>
                            </div>
                        </div>
                        <div class="product__details__price__total">
                            <p>총 작품금액 :</p>
                            <span> </span>
                        </div>
                        <button type="submit" class="primary-btn" onclick="location.href='buy'">장바구니</button>
                    </form>
                    <button type="button" class="heart-btn" onclick="">찜하기</button>
                    <button type="button" class="list-btn" onclick="location.href='list'">목록보기</button>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="product__details__tab">
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab" aria-selected="true">
                                상세정보</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab" aria-selected="false">
                                배송/교환/환불정보</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab" aria-selected="false">
                                리뷰 <span>(1)</span></a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tabs-1" role="tabpanel">
                            <div class="product__details__tab__desc">
                                <p>${sdto.shopcontent}</p>
                                <img src="../photo/${sdto.uploadfile1}" alt="">
                            </div>
                        </div>
                        <div class="tab-pane" id="tabs-2" role="tabpanel">
                            <div class="product__details__tab__desc">
                                <p>${sdto.shopdelivery}</p>
                            </div>
                        </div>
                        <div class="tab-pane" id="tabs-3" role="tabpanel">
                            <div class="product__details__tab__desc">
                                <p>리뷰 폼 출력(폼 만들어야함)</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Product Details Section End -->

<!-- Related Product Section Begin -->
<section class="related-product">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title related__product__title">
                    <h2>다른 작품 구경하기</h2>
                    <span>다양한 작품을 구경해보세요!</span>
                </div>
            </div>
        </div>
        <div class="row">

            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="product__item">
                    <a href="#">
                        <div class="product__item__pic">
                            <img src="${root}/img/featured/main_con1.jpg" alt="">
                        </div>
                        <div class="product__item__text">
                            <h6>제이라운드</h6>
                            <h6>[수능선물]수제카라멜 선물세트</h6>
                            <h5>11,000원</h5>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="product__item">
                    <a href="content?num=${sdto.num}&currentPage=${currentPage}&key=list">
                        <div class="product__item__pic">
                            <img src="../photo/${sdto.uploadfile1}" alt="">
                        </div>
                        <div class="product__item__text">
                            <h6>${sdto.name}</h6>
                            <h6>${sdto.title}</h6>
                            <h5>${sdto.shopprice}</h5>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Related Product Section End -->
<script type="text/javascript">
  $(function () {
    $("#selectoption").change(function () {
      var v = $("#selectoption option:selected").text();
      document.getElementById("result").innerText = "상품 종류  : " + v;
      document.getElementById("quantity-del-dan").innerText = $("#subnum").val() * $(
          "#selectoption").val();

    });

    // 막무가내 리스너 붙이기
    $(".pro-qty").on("change keyup paste input click", function () {
      document.getElementById("quantity-del-dan").innerText = $("#subnum").val() * $(
          "#selectoption").val();
    });
  });
</script>