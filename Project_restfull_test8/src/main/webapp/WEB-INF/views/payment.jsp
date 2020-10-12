
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 팝업창</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

	<script>
		IMP.init('imp70366626');
		
		IMP.request_pay({
		    pg : 'inicis', // version 1.1.0부터 지원.
		    pay_method : 'card',
		    merchant_uid : 'merchant_' + new Date().getTime(),
		    name : '주문명:결제테스트',
		    amount : 14000, //판매 가격 구매하기전에 장바구니에서 금액 가져오는거
		    buyer_email : 'iamport@siot.do', // 
		    buyer_name : '구매자이름', // 요청 테이블에서 정보
		    buyer_tel : '010-1234-5678', // 핸드폰 인증이 되야됨 근데 API라서 충돌일어날꺼임
		    buyer_postcode : '123-456'
		}, function(rsp) {
		    if ( rsp.success ) {
		        var msg = '결제가 완료되었습니다.';
		        msg += '고유ID : ' + rsp.imp_uid;
		        msg += '상점 거래ID : ' + rsp.merchant_uid;
		        msg += '결제 금액 : ' + rsp.paid_amount;
		        msg += '카드 승인번호 : ' + rsp.apply_num;
		    } else {
		        var msg = '결제에 실패하였습니다.';
		        msg += '에러내용 : ' + rsp.error_msg;
		    }
		    alert(msg);
		});        
    </script>

</head>
<body>
</body>
</html>
