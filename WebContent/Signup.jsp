<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="user.OverlapID"%>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.79.0">
<title>회원가입 화면</title>
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/checkout/">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

body {
	color: #FFFFFF
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>

<script> 
function checkValue(){  
    	
						var re0 = /^[A-Za-z0-9+]{4,10}$/; 
    				var re = /(?=.*\d{1,50})(?=.*[~`!@#$%\^&*()-+=]{1,50})(?=.*[a-zA-Z]{1,50}).{8,12}$/; // 비밀번호 정규식
    				var re1 = /^[가-힣]{2,4}$/; //이름 정규식
    				var re2 = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;//이메일 정규식
    				var re3 = /\d{3,4}/; // 핸드폰 가운데자리 정규식
    				var re4 = /\d{4}/; // 핸드폰 마지막자리 정규식
    				
    				var id = document.getElementById("userID").value;
    				var pw = document.getElementById("userPW").value;    				
    				var name = document.getElementById("userName").value;
    				var YY = document.getElementById("userYY").value;
    				var email = document.getElementById("userEmail").value;
    				var phone2 = document.getElementById("userPhone2").value;
    				var phone3 = document.getElementById("userPhone3").value;
    				
    				var today = new Date();
    		    var yearNow = today.getFullYear();
    				
            var obj = document.fr;        
          
            if((re0.test(id))==false){ 
            	alert("한글 및 특수문자는 아이디로 사용하실 수 없습니다.");   
            	return false;			
    				}
            
            else if (obj.userID.value.length < 4 || obj.userID.value.length > 10) {
           		alert("아이디는 4~10자 사이로 입력하세요.");            
              return false;
            }
           	
            else if(obj.idDuplication.value == "idUncheck"){
							alert("아이디 중복체크를 해주세요.");
							return false;
						}
           	
            else if((re.test(pw))==false){
           		alert("비밀번호는 영문,숫자 및 특수문자 조합으로 8~12자 사이로 입력하세요.");  
            	return false
           	}
           	
            else if(obj.userPW.value != obj.userCheckPW.value){
           		alert("패스워드가 일치하지 않습니다.");  
              return false;
            }
           	
            else if((re1.test(name))==false) {
            	alert("이름형태가 일치하지않습니다.");            
              return false;
            }
            
            else if(obj.userYY.value == '' || obj.userYY.value < 1900 || obj.userYY.value > yearNow) {
            	alert("태어난 연도를 다시 확인해주세요.");            
              return false;
            } 
            
            else if(isNaN(obj.userYY.value)==true){
            	alert("태어난 연도를 다시 확인해주세요.");
            	return false;
            }
            
            else if((re2.test(email))==false){
            	alert("이메일형식이 아닙니다."); 
            	return false;
            }
            
            else if((re3.test(phone2))==false){
            	alert("핸드폰 두번째 자리를 다시 확인해주세요"); 
            	return false;
            }
            
            else if((re4.test(phone3))==false){
            	alert("핸드폰 세번째 자리를 다시 확인해주세요"); 
            	return false;
            }
            else{
            	alert("회원가입이 완료되었습니다.");
            	return true;
            }
            
        }
    
    function fun1() {
        var obj = document.fr;
        var id = document.getElementById("userID").value;
        var regex = /^[A-Za-z0-9+]{4,10}$/;     
        
        if((regex.test(id))==false){ 
        	document.getElementById("alert_text").innerHTML=('<span style="color: red;">한글 및 특수문자는 아이디로 사용하실 수 없습니다.</span>');   
				return;
				}
        else if (obj.userID.value.length < 4 || obj.userID.value.length > 10) {
            document.getElementById("alert_text").innerHTML=('<span style="color: red;">아이디는 4~10자 사이로 입력하세요.</span>');            
            return;
        } 
        else{
      	  document.getElementById("alert_text").innerHTML=('<span style="color: green;"></span>'); 
        }       
    }
    
    function fun2() {
        var obj = document.fr;
        var pw = document.getElementById("userPW").value;
        var regex = /(?=.*\d{1,50})(?=.*[~`!@#$%\^&*()-+=]{1,50})(?=.*[a-zA-Z]{1,50}).{8,12}$/;    

      if((regex.test(pw))==false){
    	  document.getElementById("alert_pwd").innerHTML=('<span style="color: red;">비밀번호는 영문,숫자 및 특수문자 조합으로 8~12자 사이로 입력하세요.</span>');  
      	return;
      	if(obj.userPW.value != obj.CheckPW.value){
      	  document.getElementById("alert_chpwd").innerHTML=('<span style="color: red;">패스워드가 일치하지 않습니다.</span>');  
        	return;
        }   
      }
      
      else{
    	  document.getElementById("alert_pwd").innerHTML=('<span style="color: green;">입력되었습니다.</span>'); 
      }
    }
    
    function fun3() {
        var obj = document.fr;
        
           if (obj.userPW.value =='' || obj.userCheckPW.value == '' || obj.userCheckPW.value != obj.userPW.value) {
            document.getElementById("alert_chpwd").innerHTML=('<span style="color: red;">패스워드가 일치하지 않습니다.</span>');            
            return;
        } 
           else {
            document.getElementById("alert_chpwd").innerHTML=('<span style="color: green;">입력한 패스워드와 일치합니다.</span>');    
        }
          
    }   
    
    function fun4() {
        var obj = document.fr;
        var name = document.getElementById("userName").value;
        var regex = /^[가-힣]{2,4}$/;
        
        if(obj.userName.value == ''){
        	document.getElementById("alert_name").innerHTML=('<span style="color: red;">필수정보 입니다.</span>');  
        	return;
        }
        else if((regex.test(name))==false) {
            document.getElementById("alert_name").innerHTML=('<span style="color: red;">이름형태가 일치하지않습니다.</span>');            
            return;
        } 
        else {
            document.getElementById("alert_name").innerHTML=('<span style="color: green;">입력되었습니다.</span>');    
        }
      
    }
    
    function fun5() {
        var obj = document.fr;
        var today = new Date();
        var yearNow = today.getFullYear();        
      
        if(obj.userYY.value == '' || obj.userYY.value < 1900 || obj.userYY.value > yearNow) {
            document.getElementById("alert_YY").innerHTML=('<span style="color: red;">정말입니까?</span>');            
            return;
        } 
        else if(isNaN(obj.userYY.value)==true){
        	document.getElementById("alert_YY").innerHTML=('<span style="color: red;">정말입니까?</span>'); 
        	return;
        }
        else{
        	document.getElementById("alert_YY").innerHTML=('<span style="color: green;">입력되었습니다.</span>');    
        }
      
    }   
    
    function fun6() {
        var obj = document.fr;              
        var email = document.getElementById("userEmail").value;  
        var regex = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
        
      
        if(obj.userEmail.value == '') {
            document.getElementById("alert_email").innerHTML=('<span style="color: red;">필수정보 입니다.</span>');            
            return;
        } 
        else if((regex.test(email))==false){
        	document.getElementById("alert_email").innerHTML=('<span style="color: red;">이메일형식이 아닙니다.</span>'); 
        	return;
        }
        else {
            document.getElementById("alert_email").innerHTML=('<span style="color: green;">입력되었습니다.</span>');    
        }
      
    }  
    
    function fun7() {
        var obj = document.fr;              
        var phone2 = document.getElementById("userPhone2").value;  
        var regex = /\d{3,4}/;
        
      
        if(obj.userPhone2.value == '') {
            document.getElementById("alert_userPhone2").innerHTML=('<span style="color: red;">필수정보 입니다.</span>');            
            return;
        } 
        else if((regex.test(phone2))==false){
        	document.getElementById("alert_userPhone2").innerHTML=('<span style="color: red;">정말입니까?</span>'); 
        	return;
        }
        else {
            document.getElementById("alert_userPhone2").innerHTML=('<span style="color: green;">입력되었습니다.</span>');    
        }
      
    }
    function fun8() {
        var obj = document.fr;              
        var phone3 = document.getElementById("userPhone3").value;  
        var regex = /\d{4}/;
        
      
        if(obj.userPhone3.value == '') {
            document.getElementById("alert_userPhone3").innerHTML=('<span style="color: red;">필수정보 입니다.</span>');            
            return;
        } 
        else if((regex.test(phone3))==false){
        	document.getElementById("alert_userPhone3").innerHTML=('<span style="color: red;">정말입니까?</span>'); 
        	return;
        }
        else {
            document.getElementById("alert_userPhone3").innerHTML=('<span style="color: green;">입력되었습니다.</span>');    
        }
      
    }
    
    function checkid() {
    	var obj = document.fr;
    	if(obj.userID.value == "") {
    		alert("ID를 입력하세요.");
    		obj.userID.focus();
    	} 
    	else {
    		url = "OverlapID.jsp?id=" + obj.userID.value;    		
    		window.open(url,"id check", "toolbar=no, width=500, height=150, top=150, left=150");
    	}
    }    
</script>
</head>

<%@ include file="NAVbar.jsp"%>

<body class="bg-dark">
	<form action="SignupProcess.jsp" method="post" name="fr"
		onsubmit="return checkValue()">
		<div class="container">
			<main>
				<div class="py-5 text-center">
					<img class="d-block mx-auto mb-4" src=".\image\Naeun.png" alt=""
						width="150" height="100">
					<h2>회원가입</h2>
					<p class="lead">MBD Project 회원가입 테스트 페이지</p>
				</div>

				<div class="row g-3">
					<div class="col-sm-6 center-block"
						style="float: none; margin: 0 auto;">
						<h4 class="mb-3">회원정보</h4>
						<div class="row g-3">
							<div class="col-sm-12">
								<label for="userID" class="form-label">아이디</label>
								<div style="display: flex">
									<input type="text" class="form-control" id="userID"
										name="userID" maxlength="10" placeholder="아이디"
										onkeyup="fun1()" required> <input
										class="btn btn-success" type="button" value="중복확인"
										onclick="checkid()" style="margin-left: 10px"> <input
										type="hidden" id="idDuplication" value="idUncheck">
								</div>
								<span id="alert_text"></span>
							</div>

							<div class="col-12">
								<label for="userPW" class="form-label">비밀번호</label> <input
									type="password" class="form-control" id="userPW" name="userPW"
									maxlength="12" placeholder="대문자-소문자-숫자-특수문자 조합 / 8~12자리"
									onkeyup="fun2()" required> <span id="alert_pwd"></span>
							</div>

							<div class="col-12" style="margin-bottom: 2rem;">
								<label for="userCheckPW" class="form-label">비밀번호 재입력</label> <input
									type="password" class="form-control" id="userCheckPW"
									name="userCheckPW" maxlength="12"
									placeholder="대문자-소문자-숫자-특수문자 조합 / 8~12자리" onkeyup="fun3()"
									required> <span id="alert_chpwd"></span>
							</div>

							<div class="col-12">
								<label for="userNAME" class="form-label">이름</label> <input
									type="text" class="form-control" id="userName" name="userName"
									maxlength="20" placeholder="이름" onkeyup="fun4()" required>
								<span id="alert_name"></span>
							</div>

							<div>
								<div class=row>
									<label for="userBirth" class="form-label">생년월일</label>
									<div class="col-md-4">
										<input type="text" class="form-control" id="userYY"
											name="userYY" maxlength="4" placeholder="년(4자)"
											onkeyup="fun5()" required> <span id="alert_YY"></span>
									</div>

									<div class="col-md-4">
										<select class="form-select" name="userMM" required>
											<option value="">월</option>
											<option value="01">01</option>
											<option value="02">02</option>
											<option value="03">03</option>
											<option value="04">04</option>
											<option value="05">05</option>
											<option value="06">06</option>
											<option value="07">07</option>
											<option value="08">08</option>
											<option value="09">09</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
										</select>
									</div>

									<div class="col-md-4">
										<select class="form-select" name="userDD" required>
											<option value="">일</option>
											<option value="1">01</option>
											<option value="2">02</option>
											<option value="3">03</option>
											<option value="4">04</option>
											<option value="5">05</option>
											<option value="6">06</option>
											<option value="7">07</option>
											<option value="8">08</option>
											<option value="9">09</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
											<option value="13">13</option>
											<option value="14">14</option>
											<option value="15">15</option>
											<option value="16">16</option>
											<option value="17">17</option>
											<option value="18">18</option>
											<option value="19">19</option>
											<option value="20">20</option>
											<option value="21">21</option>
											<option value="22">22</option>
											<option value="23">23</option>
											<option value="24">24</option>
											<option value="25">25</option>
											<option value="26">26</option>
											<option value="27">27</option>
											<option value="28">28</option>
											<option value="29">29</option>
											<option value="30">30</option>
											<option value="31">31</option>
										</select>
									</div>
								</div>
							</div>

							<div class="col-12" style="margin-bottom: 2rem;">
								<label for="userGender" class="form-label">성별</label> <select
									class="form-select" name="userGender" id="userGender" required>
									<option value="">성별</option>
									<option value="남">남</option>
									<option value="여">여</option>
								</select>
							</div>

							<div class="col-12">
								<label for="userEmail" class="form-label">이메일</label> <input
									type="text" class="form-control" name="userEmail"
									id="userEmail" placeholder="EMAIL" onkeyup="fun6()" required>
								<span id="alert_email"></span>
							</div>

							<div>
								<div class=row>
									<label for="userPhone" class="form-Label">휴대전화</label>
									<div class="col-4">
										<select class="form-select" name="userPhone1" required>
											<option value="">선택</option>
											<option>010</option>
											<option>011</option>
											<option>016</option>
											<option>017</option>
											<option>018</option>
											<option>019</option>
										</select>
									</div>

									<div class="col-md-4">
										<input type="text" class="form-control" name="userPhone2"
											id="userPhone2" maxlength="4" placeholder="" onkeyup="fun7()"
											required> <span id="alert_userPhone2"></span>
									</div>

									<div class="col-md-4">
										<input type="text" class="form-control" name="userPhone3"
											id="userPhone3" maxlength="4" placeholder="" onkeyup="fun8()"
											required> <span id="alert_userPhone3"></span>
									</div>
								</div>
							</div>
						</div>

						<hr class="my-4">
						<div class="form-check">
							<input type="checkbox" class="form-check-input" value='1'
								name="privacyCheck" required> <label
								class="form-check-label" for="same-address">개인정보 수집 동의</label>
						</div>

						<div class="form-check">
							<input type="checkbox" class="form-check-input" value='1'
								name="adCheck" required> <label class="form-check-label"
								for="save-info">광고성 메일 수신 동의</label>
						</div>

						<hr class="my-4">
						<button class="w-100 btn btn-primary btn-lg btn-success"
							type="submit">회원가입 완료</button>
					</div>
				</div>
			</main>

			<%@ include file="Footer.jsp"%>
		</div>
	</form>

	<script src=".\js\form-validation.js"></script>
</body>
</html>
