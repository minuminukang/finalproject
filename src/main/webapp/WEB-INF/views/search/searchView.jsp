<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>



<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
	
    <div class="section section-header section-image bg-primary overlay-primary text-white overflow-hidden pb-6" data-background="${path}/resources/img/cup.jpg">
        <div class="container z-2">
            <div class="row justify-content-center pt-3">
                <div class="col-12 text-center">
                </div>
            </div>
        </div>
    </div>

    <div class="section section-lg pt-5">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-8">
                    <!-- Tab -->
                    <nav>
                        <div class="nav nav-tabs flex-column flex-md-row border-light mb-3" id="nav-tab" role="tablist">
                            <a class="nav-item nav-link active" id="nav-about-tab" data-toggle="tab" href="#nav-about" role="tab" aria-controls="nav-about" aria-selected="true"><span class="far fa-address-card mr-2"></span>시설</a>
                            <a class="nav-item nav-link" id="nav-reviews-tab" data-toggle="tab" href="#nav-reviews" role="tab" aria-controls="nav-reviews" aria-selected="false"><span class="far fa-star mr-2"></span>리뷰</a>
                            <a class="nav-item nav-link" id="nav-location-tab" data-toggle="tab" href="#nav-location" role="tab" aria-controls="nav-location" aria-selected="false"><span class="fas fa-map-marker-alt mr-2"></span>지도</a>
                        </div>
                    </nav>

                    <div class="tab-content mt-5 mb-3" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="nav-about" role="tabpanel" aria-labelledby="nav-about-tab">
                            <div class="row mb-5">
                                <div class="col-12" style="height: 415px;">
                                    <div class="fancy-gallery mb-5">
                                        <div id="slide">
                                          <img src='<c:out value="${ground.g_imgurl}"></c:out>' style="height: 410px;">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End of About Tab -->
                        <!-- 리뷰 -->
                        <div class="tab-pane fade" id="nav-reviews" role="tabpanel" aria-labelledby="nav-reviews-tab">
                            <div class="card bg-white border border-light p-4 mb-4">
                                <div class="d-flex justify-content-between align-items-center mb-3">
                                    <div>
                                        <a href="./profile.html" class="h5">구장이 좋아요</a>
                                        <ul class="list-unstyled d-flex mt-1 mb-0">
                                            <li class="list-item small mr-3">by 봉찬</li>
                                            <li class="list-item small">2 weeks ago</li>
                                        </ul>
                                    </div>
                                    <div class="d-flex justify-content-end">
                                        <span class="d-flex justify-content-center">
                                                <i class="star fa-star fas text-warning mr-2"></i>
                                                <i class="star fa-star fas text-warning mr-2"></i>
                                                <i class="star fa-star fas text-warning mr-2"></i>
                                                <i class="star fa-star  fas text-warning  mr-2"></i>
                                                <i class="star far fa-star text-gray"></i>
                                            </span>
                                    </div>
                                </div>
                                <p class="m-0">구장이 깔끔해서 자주 올 것 같아요!</p>
                            </div>
                            <div class="card bg-white border border-light p-4 mb-4">
                                <div class="d-flex justify-content-between align-items-center mb-3">
                                    <div>
                                        <a href="./profile.html" class="h5">시설이 잘되어있어요</a>
                                        <ul class="list-unstyled d-flex mt-1 mb-0">
                                            <li class="list-item small mr-3">by 영재</li>
                                            <li class="list-item small">2 weeks ago</li>
                                        </ul>
                                    </div>
                                    <div class="d-flex justify-content-end">
                                        <span class="d-flex justify-content-center">
                                                <i class="star fa-star fas text-warning mr-2"></i>
                                                <i class="star fa-star fas text-warning mr-2"></i>
                                                <i class="star fa-star fas text-warning mr-2"></i>
                                                <i class="star fa-star  fas text-warning  mr-2"></i>
                                                <i class="star far fa-star text-gray"></i>
                                            </span>
                                    </div>
                                </div>
                                <p class="m-0">기분 좋게 볼 차고 가요!</p>
                            </div>
                            <form method="post">
                                <div class="d-flex justify-content-between align-items-center mb-3 mt-5">
                                    <h2 class="h5 m-0">리뷰 작성하기</h2>
                                    <span class="d-flex justify-content-center stars-rating">
                                            <i class="star far fa-star text-gray mr-2" data-rating-value="1"></i>
                                            <i class="star far fa-star text-gray mr-2" data-rating-value="2"></i>
                                            <i class="star far fa-star text-gray mr-2" data-rating-value="3"></i>
                                            <i class="star far fa-star text-gray mr-2" data-rating-value="4"></i>
                                            <i class="star far fa-star text-gray" data-rating-value="5"></i>
                                        </span>
                                </div>
                                <textarea name="description" class="form-control border" placeholder="리뷰를 작성해주세요." rows="6" data-bind-characters-target="#charactersRemaining" maxlength="100" required style="height: 100px"></textarea>
                                <div class="d-flex justify-content-between mt-3">
                                    <small class="font-weight-light">
                                            <span id="charactersRemaining">1000</span> characters remaining</small>
                                    <button type="submit" class="btn btn-primary animate-up-2">Add review</button>
                                </div>
                            </form>
                        </div>
                        <!-- End of Reviews Tab -->
                        <div class="tab-pane fade" id="nav-location" role="tabpanel" aria-labelledby="nav-location-tab">
                            <div class="row">
                                <div class="col-12">
                                   <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d25313.817143225366!2d126.83361905304176!3d37.52614255753301!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c9da602e23bf5%3A0xefd28fb1c82633cc!2z7ISc7ISc7Jq47Zi47IiY6rO17JuQ!5e0!3m2!1sko!2skr!4v1646218951786!5m2!1sko!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- 구장정보-->
                <div class="card border-light mt-4 p-3">
                    <h3 class="font-weight-normal"><b><c:out value="${ground.g_placenm}"/></b></h3>
                    <h5 class="font-weight-normal">
                        <b><li>구장정보</li></b>
                    </h5>
                    <p><b>구장크기 : 64m x 42m</b></p>
                    <p><b>추천인원 : 9 vs 9</b></p>
                    <p><b>구장정보 : 야외 인조잔디</b></p>

                    <i class="fas fa-parking"> 주차가능</i><br>
                    <i class="fas fa-temperature-high"> 냉난방시설</i><br>
                    <i class="fas fa-shower"> 샤워시설</i><br>
                    <i class="fas fa-futbol"> 공대여</i><br>
                    <i class="fas fa-shoe-prints"> 축구화 대여</i><br>
                    <i class="fas fa-restroom"> 화장실</i>
                </div>
            </div>
        </div>
    </div>

	<div class="container">
	    <form>
	        <div class="row justify-content-center">
	            <div class="text-center">
	                <div id="calendarForm">
	                </div>
	            </div>
	        </div>
	        <div class="row justify-content-center pt-3">
	            <div class="col-12">
	                <div class="card border-light mb-4 animate-up-5">
	                    <div class="card-body">
	                        <div class="row">
	                            <div class="col-sm-1">
	                                <span class="h5 text-dark font-weight-bold">시간</span>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <div class="card border-light mb-4 animate-up-5">
	                    <div class="card-body">
	                        <div class="row">
	                            <div class="col-sm-1">
	                                <span class="h5 text-dark font-weight-bold">10:00<br>~<br>12:00</span>
	                            </div>
	                            <div class="col-sm-9">
	                                <span class="h5 text-dark font-weight-bold"></span>
	                            </div>
	                            <div class="col-sm-2">
	                                <button type="button" id="check_module" class="btn btn-primary">신청 가능</button>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <div class="card border-light mb-4 animate-up-5">
	                    <div class="card-body">
	                        <div class="row">
	                            <div class="col-sm-1">
	                                <span class="h5 text-dark font-weight-bold">12:00<br>~<br>14:00</span>
	                            </div>
	                            <div class="col-sm-9">
	                                <span class="h5 text-dark font-weight-bold"></span>
	                            </div>
	                            <div class="col-sm-2">
	                                <button type="button" id="check_module" class="btn btn-primary">신청 가능</button>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <div class="card border-light mb-4 animate-up-5">
	                    <div class="card-body">
	                        <div class="row">
	                            <div class="col-sm-1">
	                                <span class="h5 text-dark font-weight-bold">14:00<br>~<br>16:00</span>
	                            </div>
	                            <div class="col-sm-9">
	                                <span class="h5 text-dark font-weight-bold"></span>
	                            </div>
	                            <div class="col-sm-2">
	                                <button type="button" id="check_module" class="btn btn-primary">신청 가능</button>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <div class="card border-light mb-4 animate-up-5">
	                    <div class="card-body">
	                        <div class="row">
	                            <div class="col-sm-1">
	                                <span class="h5 text-dark font-weight-bold">16:00<br>~<br>18:00</span>
	                            </div>
	                            <div class="col-sm-9">
	                                <span class="h5 text-dark font-weight-bold"></span>
	                            </div>
	                            <div class="col-sm-2">
	                                <button disabled="disabled" type="button" id="check_module" class="btn btn-danger">신청 마감</button>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </form>
	</div>

<script>
	$("#check_module").click(function () {
		var IMP = window.IMP; // 생략가능
		IMP.init('imp36749177'); 
		// i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드
		// ''안에 띄어쓰기 없이 가맹점 식별코드를 붙여넣어주세요. 안그러면 결제창이 안뜹니다.
		IMP.request_pay({
			pg: 'kakao',
			pay_method: 'card',
			merchant_uid: 'merchant_' + new Date().getTime(),
			/* 
			 *  merchant_uid에 경우 
			 *  https://docs.iamport.kr/implementation/payment
			 *  위에 url에 따라가시면 넣을 수 있는 방법이 있습니다.
			 */
			name: '아메리카노',
			// 결제창에서 보여질 이름
			// name: '주문명 : ${auction.a_title}',
			// 위와같이 model에 담은 정보를 넣어 쓸수도 있습니다.
			amount: 1500,
			// amount: ${bid.b_bid},
			// 가격 
			buyer_name: '이름',
			// 구매자 이름, 구매자 정보도 model값으로 바꿀 수 있습니다.
			// 구매자 정보에 여러가지도 있으므로, 자세한 내용은 맨 위 링크를 참고해주세요.
			buyer_postcode: '123-456',
			}, function (rsp) {
				console.log(rsp);
			if (rsp.success) {
				var msg = '결제가 완료되었습니다.';
				msg += '결제금액 : ' + rsp.paid_amount;
			
				// success.submit();
				// 결제 성공 시 정보를 넘겨줘야한다면 body에 form을 만든 뒤 위의 코드를 사용하는 방법이 있습니다.
				// 자세한 설명은 구글링으로 보시는게 좋습니다.
			} else {
				var msg = '결제에 실패하였습니다.';
				msg += '에러내용 : ' + rsp.error_msg;
			}
			alert(msg);
		});
	});
</script>


<jsp:include page="/WEB-INF/views/common/footer.jsp"/>