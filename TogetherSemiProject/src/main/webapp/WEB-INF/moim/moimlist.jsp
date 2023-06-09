<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../commonvar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dongle:wght@700&family=Sunflower:wght@700&family=Nunito:wght@800&family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&family=Single+Day&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<style>
	.clear:after{    /* 자식이 모두 float 을 사용할때 부모가 높이를 갖게하기 위함 */
		content:"";
		display:block;
		clear:both;
	}


	#moimlist {
		width: 1140px;
		margin: 0 auto;
		margin-top:10px;
	}
	
	#moim_cate {
		display: flex;
		justify-content: space-around;	
		
	}
	
	#moim_cate label {
		display: flex;
		flex-direction: column;
	  	align-items: center;
	  	text-align: center;
	  	cursor: pointer;
	}
	
	#moim_cate img {
		width: 50px;
		height: 50px;
	}
	#moim_cate img:hover{
		transform: scale(1.05);
		transition:0.3s;
	}
	#moim_cate img:not(:hover){
		transition:0.3s;
	}
	
	#moim_btn_wrap {
    	height: 100px;
    	
	}

	#moim_sort_btn {
		margin-left: 13px;
		float: left;
	}
	
	#moim_sort_btn button {
		margin-left: 5px;
	}
	
	#moim_sel_local {
		margin: 0 auto;
		display: flex;
		justify-content: flex-end;
		margin-bottom: 30px;
	}
	
	#moim_sel_local select {
		margin-left: 10px;
		width: 150px;
		height: 30px;
		font-size: 15px;
		background: #fff;
		background-size: 20px 8px;
		border-radius:5px;
		display: inline-block;
		text-align: start;
		border: solid 1px #848484;
		cursor: default;
		padding-left: 5px;
		
	}
	
	#moim_sel_local button {
		margin-left: 10px;
		cursor: pointer;
	}

	#moim_table {
		width:1140px;
		margin: 0 auto;
	}
	
	#makemoim {
		width: 100%;
		display: flex;
		justify-content: flex-end;
	}
	
	.moim_paging {
		margin-bottom:100px;
		text-align: center;
	}

    .motable td {
       width: 195px;
     }
     
     .sord {
     	margin-bottom: 100px;
     	margin-right: 55px;
     }
     
     .selcategory {
     	border: solid 1px #848484;
     	width: 150px;
     	height: 30px;
     	font-size: 15px;
     	background: #fff;
     	background-size: 20px 8px;
     	border-radius:5px;
     	text-align: center;
     	line-height: 30px; 
     }
     
     .search {
     	width : 90px;
     	height : 30px;
		background: #FE9A2E;
      	background-size: 200%;
        color:white;
        font-weight: 500;
        border:none;
        cursor:pointer;
        border-radius: 5px;
        transition: background-color 0.2s;   
     }
     .search:hover {
     	background: #FE642E;
     }
     
     .searchrul {
     	float:right;
     	margin-right: 12px;
     	font-size:20px;
     }
   	.asel {
    font-weight:bold;
    background-color: #FE9A2E;
    border: 2px solid #FE9A2E;
    color: white;
    margin-top: 0px;
    margin-bottom: 20px;
    width: 150px;
    border-radius: 3px;
    cursor: pointer;
    transition: background-color 0.3s, color 0.3s;
  }

  .asel:hover {
    background-color: #FE9A2E;
    color: white;
    font-weight:bold;
  }
   .asel:active,
  .asel:focus {
   	background-color: #FE9A2E;
    color: white;
    outline: none;
    font-weight:bold;
  }
  
  .bsel {
    font-weight:bold;
    background-color: white;
    border: 2px solid #FE9A2E;
    color: #FE9A2E;
    margin-top: 0px;
    margin-bottom: 20px;
    width: 150px;
    border-radius: 3px;
    cursor: pointer;
    transition: background-color 0.3s, color 0.3s;
  }

  .bsel:hover {
    background-color: #FE9A2E;
    color: white;
    font-weight:bold;
  }
   .bsel:active,
  .bsel:focus {
   	background-color: #FE9A2E;
    color: white;
    outline: none;
    font-weight:bold;
  }
	
	.moim_box a {
		color: black;
		text-decoration: none;
	}
	
	.moim_box img {
		width: 100%;
		height: 210px;
	}
	
	#moim_table td {
		widows: 260px;
	}
	
	#moim_table td div {
		cursor: pointer;
	}
	
	.moim_info {
		margin-top:10px;
		margin-left: 10px;
	}
	
	.info1 {
		font-size: 15px;
		font-weight: 700;
		color: #FF8000;
		margin-bottom: 5px;
	}
	
	.info2 {
		font-size: 20px;
		height: 70px;
		font-weight: 700;
	}
	
	.info3 {
		margin-top:15px;
		font-size:13px;
	}
	
	.moim_box {
		margin:0 auto;
		border: 1px solid #BDBDBD;
		width: 260px;
		height: 390px;
		margin-bottom: 30px;
		border-radius: 10px;		 
	}
     
	.boxph {
		border-radius:10px;
		width:257px;
		overflow: hidden;
	}
	
 	.boxph:hover {
       	transform: scale(1.06);
       	transition: transform 0.3s ease;
	}
	
	.tla {
		height: 20px;
		width: 160px;
	}
	
	.makemo {
		margin-right: 13px;
		height: 38px;
       	width:90px;
       	background: #FE9A2E;
        background-size: 200%;
        color:white;
        font-weight: 500;
        border:none;
        cursor:pointer;
        border-radius: 5px;
        transition: background-color 0.2s;
	}
	
	.makemo:hover {
		background: #FE642E;
	}
	
</style>
</head>
<body>
	<div id="moimlist">
		
		<div id="moim_head">
			
			<div id="moim_cate">
				<label data-bs-toggle="modal" data-bs-target="#mySportsModal">
					<img src="../photo/Sports.png">
					<h7 style="font-family:Sunflower">운동/스포츠</h7>
					<span></span>
				</label>
				
				<label data-bs-toggle="modal" data-bs-target="#myGameModal">
					<img src="../photo/board-game.png">
					<h7 style="font-family:Sunflower">게임/오락</h7>
					<span></span>
					</label>
	
				<label data-bs-toggle="modal" data-bs-target="#myTravelModal">
					<img src="../photo/travel.png">
					<h7 style="font-family:Sunflower">여행/아웃도어</h7>
					<span></span>
				</label>
				
				<label data-bs-toggle="modal" data-bs-target="#myBookModal">
					<img src="../photo/reading.png">
					<h7 style="font-family:Sunflower">책/글</h7>
					<span></span>
				</label>
				
				<label data-bs-toggle="modal" data-bs-target="#myWorkModal">
					<img src="../photo/working.png">
					<h7 style="font-family:Sunflower">업종/직무</h7>
					<span></span>
				</label>
				
				<label data-bs-toggle="modal" data-bs-target="#myLangModal">
					<img src="../photo/languages.png">
					<h7 style="font-family:Sunflower">외국/언어</h7>
					<span></span>
				</label>
				
				<label data-bs-toggle="modal"data-bs-target="#myMusicModal">
					<img src="../photo/Live music.png">
					<h7 style="font-family:Sunflower">음악/악기</h7>
					<span></span>
				</label>
				
				<label data-bs-toggle="modal" data-bs-target="#mySocialModal">
					<img src="../photo/meeting.png">
					<h7 style="font-family:Sunflower">사교/인맥</h7>
					<span></span>
				</label>
				
				<label data-bs-toggle="modal" data-bs-target="#myCraftsModal">
					<img src="../photo/Color palette.png">
					<h7 style="font-family:Sunflower">공예/만들기</h7>
					<span></span>
				</label>
			</div>
			
			

			<script>
               $(document).ready(function() {
                     $('#city').change(function() {
                       var city = $(this).val();
                       if (city === '서울특별시') {
                         var districts = ['강남구', '강동구', '강북구', '강서구', '관악구', '광진구', '구로구', '금천구', '노원구', '도봉구', '동대문구', '동작구', '마포구', '서대문구', '서초구', '성동구', '성북구', '송파구', '양천구', '영등포구', '용산구', '은평구', '종로구', '중구', '중랑구'];
                       } else if (city === '부산광역시') {
                          var districts = ['강서구', '금정구', '기장군', '남구', '동구', '동래구', '부산진구', '북구', '사상구', '사하구', '서구', '수영구', '연제구', '영도구', '중구', '해운대구'];
                       } else if (city === '대구광역시') {
                           var districts = ['남구', '달서구', '달성군', '동구', '북구', '서구', '수성구', '중구'];
                        } else if (city === '인천광역시') {
                           var districts = ['강화군', '계양구', '남구', '남동구', '동구', '미추홀구', '부평구', '서구', '연수구', '옹진군'];
                        } else if (city === '광주광역시') {
                           var districts = ['광산구', '남구', '동구', '북구', '서구'];
                        } else if (city === '대전광역시') {
                           var districts = ['대덕구', '동구', '서구', '유성구', '중구'];
                        } else if (city === '울산광역시') {
                           var districts = ['남구', '동구', '북구', '울주군'];            
                        } else if (city === '세종특별자치시') {
                           var districts = ['가람동','고운동', '금남면', '나성동', '누리동', '다솜동', '다정동', '대평동', '도담동', '반곡동', '보람동', '부강면', '산울동', '새롬동', '세종동', '소담동', '소정면','아름동', '어진동', '연기면', '연동면', '연서면', '용호동', '장군면', '전동면', '전의면', '조치원읍', '종촌동', '집현동', '한별동', '한솔동', '합강동', '해밀동'];            
                        } else if (city === '경기도') {
                           var districts = ['가평군', '고양시', '과천시', '광명시', '광주시', '구리시', '군포시', '김포시', '남양주시', '동두천시', '부천시', '성남시', '수원시', '시흥시', '안산시', '안성시', '안양시', '양주시', '양평군', '여주시', '연천군', '오산시', '용인시', '의왕시', '의정부시', '이천시', '파주시', '평택시', ' 포천시', '하남시', '화성시'];
                        } else if (city === '강원도') {
                           var districts = ['강릉시', '동해시', '속초시', '원주시', '춘천시', '태백시', '고성군', '양양군', '영월군', '인제군', '정선군', '철원군', '화천군', '횡성군'];
                        } else if (city === '충청북도') {
                           var districts = ['청주시', '충주시', '제천시', '보은군', '옥천군', '영동군', '진천군', '괴산군', '음성군', '단양군'];
                        } else if (city === '충청남도') {
                           var districts = ['천안시', '공주시', '보령시', '아산시', '서산시', '논산시', '계룡시', '당진시', '금산군', '부여군', '서천군', '청양군', '홍성군', '예산군', '태안군'];
                        } else if (city === '전라북도') {
                           var districts = ['전주시 완산구', '전주시 덕진구', '군산시', '익산시', '정읍시', '남원시', '김제시', '완주군', '진안군', '무주군', '장수군', '임실군', '순창군', '고창군', '부안군'];
                        } else if (city === '전라남도') {
                           var districts = ['광양시', '나주시', '목포시', '순천시', '여수시', '영광군', '영암군', '완도군', '장성군', '장흥군', '진도군', '함평군', '해남군', '화순군'];
                        } else if (city === '경상북도') {
                           var districts = ['경산시', '경주시', '고령군', '구미시', '군위군', '김천시', '문경시', '봉화군', '상주시', '성주군', '안동시', '영덕군', '영양군', '영주시', '영천시', '예천군', '울릉군', '울진군', '의성군', '청도군', '청송군', '칠곡군', '포항시'];
                        } else if (city === '경상남도') {
                           var districts = ['창원시', '진주시', '통영시', '사천시', '김해시', '밀양시', '거제시', '양산시', '함안군', '창녕군', '고성군', '남해군', '하동군', '산청군', '함양군', '거창군', '합천군'];
                        } else if (city === '제주특별자치도') {
                           var districts = ['제주시', '서귀포시'];
                        } else {
                         $('#district').empty().prop('disabled', true);
                       }
                       var districtSelect = $('#district');
                       districtSelect.empty();
                         districtSelect.append($('<option>', { value: '', text: '전지역' }));  
                       $.each(districts, function(index, value) {
                         districtSelect.append($('<option>', { value: value, text: value }));
                       });
                       districtSelect.prop('disabled', false);
                     });
                   });
            </script>
					
					
			<script>
					function submitSelectedConditions() {
					  // 선택된 카테고리와 지역 정보를 가져옴
					  const selectedCategory = document.querySelector('#selcategory').value;
					  const selectedCity1 = document.querySelector('.seldistrict1').value;
					  const selectedCity2 = document.querySelector('.seldistrict2').value;
					
					  // selcategory에만 값이 있는 경우
					  if (selectedCategory && !selectedCity1) {
					    // selcategory의 value 속성만 설정하고 seldistrict의 name 속성을 제거
					    document.querySelector('.seldistrict1').removeAttribute('name');
					    document.querySelector('.seldistrict2').removeAttribute('name'); 
					  }
					  // seldistrict1에만 값이 있는 경우
					  else if (!selectedCategory && selectedCity1 && !selectedCity2) {
					    // seldistrict의 value 속성만 설정하고 selcategory의 name 속성을 제거
					    document.querySelector('#selcategory').removeAttribute('name');
					    document.querySelector('.seldistrict2').removeAttribute('name');
					  }
						// seldistrict1와seldistrict2에만 값이 있는 경우
					  else if (!selectedCategory && selectedCity1 && selectedCity2) {
					    // seldistrict의 value 속성만 설정하고 selcategory의 name 속성을 제거
					    document.querySelector('#selcategory').removeAttribute('name');
					  }
						// selcategory와seldistrict1에만 값이 있는 경우
					  else if (selectedCategory && selectedCity1 && !selectedCity2) {
					    // seldistrict의 value 속성만 설정하고 selcategory의 name 속성을 제거
						  document.querySelector('.seldistrict2').removeAttribute('name');
					  }
					  // selcategory와 seldistrict 모두 값이 없는 경우
					  else if (!selectedCategory && !selectedCity1 && !selectedCity2) {
					    // 값이 있는 경우만 input 요소에 value 속성을 할당
						  document.querySelector('#selcategory').removeAttribute('name');
						  document.querySelector('.seldistrict1').removeAttribute('name'); 
						  document.querySelector('.seldistrict2').removeAttribute('name');
					  }
					  // form 데이터를 서버로 전송
					  document.querySelector('form').submit();
					}
					</script>
			
			<div>
				<form id="sort-form" action="moimlist" method="get">
					<input type="hidden" id="sortcity1" name="city1" value="">
					<input type="hidden" id="sortcity2" name="city2" value="">
					<input type="hidden" id="sortcategory" name="category" value="">
					<input type="hidden" class="selsortmnum" value="">
					<input type="hidden" class="selsortmcount" name="sort" value="mcount">
				</form>
			</div>
			
			
	
			<script>
				  const urlParams = new URLSearchParams(window.location.search);
				  const city1 = urlParams.get('city1');
				  const city2 = urlParams.get('city2');
				  const category = urlParams.get('category');
				  if (city1 && city2 && category) {
					  document.querySelector('input[id="sortcity1"]').value = city1;
					  document.querySelector('input[id="sortcity2"]').value = city2;
					  document.querySelector('input[id="sortcategory"]').value = category;
				  } else if (city1 && city2 && !category) {
					  document.querySelector('input[id="sortcity1"]').value = city1;
					  document.querySelector('input[id="sortcity2"]').value = city2;
					  document.querySelector('input[id="sortcategory"]').removeAttribute('name');
				  } else if (city1 && !city2 && !category) {
					  document.querySelector('input[id="sortcity1"]').value = city1;
					  document.querySelector('input[id="sortcity2"]').removeAttribute('name');
					  document.querySelector('input[id="sortcategory"]').removeAttribute('name');
				  } else if (!city1 && !city2 && category) {
					  document.querySelector('input[id="sortcategory"]').value = category;
					  document.querySelector('input[id="sortcity1"]').removeAttribute('name');
					  document.querySelector('input[id="sortcity2"]').removeAttribute('name');
				  }	else if (city1 && !city2 && category) {
					  document.querySelector('input[id="sortcity1"]').value = city1;
					  document.querySelector('input[id="sortcategory"]').value = category;
					  document.querySelector('input[id="sortcity2"]').removeAttribute('name');
				  } else if (!city1 && !city2 && !category) {
					  document.querySelector('input[id="sortcity1"]').removeAttribute('name');
					  document.querySelector('input[id="sortcity2"]').removeAttribute('name');
					  document.querySelector('input[id="sortcategory"]').removeAttribute('name');
				  }
				
	
				  
				  function submitSelectedSortmnum() {
				    document.querySelector('.selsortmcount').removeAttribute('name');
				    document.querySelector('#sort-form').submit();		  	
				  }
				  function submitSelectedSortmcount() {
				    document.querySelector('.selsortmnum').removeAttribute('name');
				    document.querySelector('#sort-form').submit();
				  }				 
				  /* let button = document.getElementById("asel");
				  
				  button.addEventList
				  window.addEventListener("load", function(){
					  let savedClass = localStorage.getItem("buttonClass");
					  
					  if(savedClass){
						  button.classList.add(savedClass);
					  }
				  }) */
			</script>
					
		</div>	
		
		<hr style="color: gray">
					
			<!-- 리스트 출력 부분 -->
			
			<div id="moim_btn_wrap">
				
				
					<div id="moim_sel_local">
						<span type="text" class="selcategory">카테고리</span>
			 
						<label for="user_city"></label> 
						<select id="city" name="city1">
								<option hidden>시, 도 선택</option>
								<option value="서울특별시">서울특별시</option>
								<option value="부산광역시">부산광역시</option>
								<option value="대구광역시">대구광역시</option>
								<option value="인천광역시">인천광역시</option>
								<option value="광주광역시">광주광역시</option>
								<option value="대전광역시">대전광역시</option>
								<option value="울산광역시">울산광역시</option>
								<option value="세종특별자치시">세종특별자치시</option>
								<option value="경기도">경기도</option>
								<option value="강원도">강원도</option>
								<option value="충청북도">충청북도</option>
								<option value="충청남도">충청남도</option>
								<option value="전라북도">전라북도</option>
								<option value="전라남도">전라남도</option>
								<option value="경상북도">경상북도</option>
								<option value="경상남도">경상남도</option>
								<option value="제주특별자치도">제주특별자치도</option>
							</select>						
						<select id="district" name="city2">
							<option>시, 군, 구 선택</option>
						</select>
							
						<form action="moimlist" method="get">
							<input type="hidden" class="seldistrict1" name="city1" value="">
							<input type="hidden" class="seldistrict2" name="city2" value="">
							<input type="hidden" id="selcategory" name="category" value="">
							<button type="submit" class="search" onclick="submitSelectedConditions()">검색</button>
						</form>
					</div>	
										
					<div id="moim_sort_btn">
					  <c:choose>
					    <c:when test="${param.sort != null && param.sort eq 'mcount'}">
					      <button type="button" onclick="submitSelectedSortmnum()" id="new" class="bsel">최신순</button>
					      <button type="button" onclick="submitSelectedSortmcount()" id="best" class="asel">인기순</button>
					    </c:when>
					    <c:otherwise>
					      <button type="button" onclick="submitSelectedSortmnum()" id="new" class="asel">최신순</button>
					      <button type="button" onclick="submitSelectedSortmcount()" id="best" class="bsel">인기순</button>
					    </c:otherwise>
					  </c:choose>
					</div>
				
					<div>
						<span class="searchrul">
							<c:choose>
								<c:when test="${unum == 0 && city1 == 'no'}">
									<!-- 비회원일 때, 지역 전체 -->
									모임
								</c:when>
								<c:otherwise>
									<!-- 회원일 때 -->
									${city1} ${city2} 
									${category} 모임
								</c:otherwise>
							</c:choose>
								${totalCount}개
						</span>
					</div>
			</div>
				
		<div>
			<table id="moim_table">
				<c:forEach var="dto" items="${list}" varStatus="i">
					<c:if test="${i.count % 4 == 1}">
						<tr>
					</c:if>
							<td>
								<div class="moim_box" onclick="location.href='moimdetail?mnum=${dto.mnum }&mname=${dto.mname}'">
									
									<div class="boxph">
										<c:choose>
											<c:when test="${dto.mphoto==null}">
												<!-- Result값이 없다면 실행할 로직 -->								
													<img src="http://sjrhsefqqpro17075801.cdn.ntruss.com/moim/together.png?type=f&w=200&h=200&ttype=jpg">
											</c:when>
											
											<c:otherwise>
												<img src="http://${imageUrl_small}/moim/${dto.mphoto}?type=f&w=200&h=200&ttype=jpg">
											</c:otherwise>
										</c:choose>
									</div>
									
								 	<div class="moim_info">
										
										<div class="info1">
											${dto.category}
										</div>
										
										<div class="info2" style="font-family:IBM Plex Sans KR;">
											${dto.mname}
										</div>
										
										<div class="info3" style="font-family:IBM Plex Sans KR;">
											${dto.city1} ${dto.city2} <br>
											멤버 : ${dto.mcount}/100명
										</div>
									</div>
													
								</div>
							</td>
					<c:if test="${i.count % 4 == 0}">
					</tr><tr>
					</c:if>
				</c:forEach>
			</table>
			
				<c:if test="${sessionScope.unum != null }">
					<div id="makemoim">
						<button type="button" class="makemo" onclick="checkCreate(event)">만들기</button>
					</div>
				</c:if>	
		</div>		
		
		
		<div>	
		<!-- 페이징처리하기 -->
		<c:choose>
			<c:when test="${category ne null and city1 ne null and city2 ne null and sort eq 'mcount'}">
				<div class="moim_paging">
					<!-- 이전 -->
					<c:if test="${startPage>1}">
						<a style="color: black; text-decoration: none; cursor: pointer;"
							href="moimlist?category=${category}&city1=${city1}&city2=${city2}&sort=mcount&currentPage=${startPage-1}">이전</a>
					</c:if>
					&nbsp;
					<!-- 페이지 번호 출력 -->
					<c:forEach var="pp" begin="${startPage}" end="${endPage}">
						<c:if test="${currentPage==pp}">
							<a style="color: blue; font-size: 23px; text-decoration: none; cursor: pointer;"
								href="moimlist?category=${category}&city1=${city1}&city2=${city2}&sort=mcount&currentPage=${pp}">${pp}</a>
						</c:if>
						<c:if test="${currentPage!=pp}">
							<a style="color: black; text-decoration: none; cursor: pointer;"
								href="moimlist?category=${category}&city1=${city1}&city2=${city2}&sort=mcount&currentPage=${pp}">${pp}</a>
						</c:if>
						&nbsp;
					</c:forEach>
					<!-- 다음 -->
					<c:if test="${endPage<totalPage}">
						<a style="color: black; text-decoration: none; cursor: pointer;"
							href="moimlist?category=${category}&city1=${city1}&city2=${city2}&sort=mcount&currentPage=${endPage+1}">다음</a>
					</c:if>
				
				</div>
				
			</c:when>
			<c:when test="${category ne null and city1 ne null and city2 ne null and sort eq null}">
				<div class="moim_paging">
					<!-- 이전 -->
					<c:if test="${startPage>1}">
						<a style="color: black; text-decoration: none; cursor: pointer;"
							href="moimlist?category=${category}&city1=${city1}&city2=${city2}&currentPage=${startPage-1}">이전</a>
					</c:if>
					&nbsp;
					<!-- 페이지 번호 출력 -->
					<c:forEach var="pp" begin="${startPage}" end="${endPage}">
						<c:if test="${currentPage==pp}">
							<a
								style="color: blue; font-size: 23px; text-decoration: none; cursor: pointer;"
								href="moimlist?category=${category}&city1=${city1}&city2=${city2}&currentPage=${pp}">${pp}</a>
						</c:if>
						<c:if test="${currentPage!=pp}">
							<a style="color: black; text-decoration: none; cursor: pointer;"
								href="moimlist?category=${category}&city1=${city1}&city2=${city2}&currentPage=${pp}">${pp}</a>
						</c:if>
						&nbsp;
					</c:forEach>
					<!-- 다음 -->
					<c:if test="${endPage<totalPage}">
						<a style="color: black; text-decoration: none; cursor: pointer;"
							href="moimlist?category=${category}&city1=${city1}&city2=${city2}&currentPage=${endPage+1}">다음</a>
					</c:if>
				</div>
			</c:when>
			<c:when test="${category ne null and city1 ne null and city2 eq null and sort eq 'mcount'}">
				<div class="moim_paging">
					<!-- 이전 -->
					<c:if test="${startPage>1}">
						<a style="color: black; text-decoration: none; cursor: pointer;"
							href="moimlist?category=${category}&city1=${city1}&sort=mcount&currentPage=${startPage-1}">이전</a>
					</c:if>
					&nbsp;
					<!-- 페이지 번호 출력 -->
					<c:forEach var="pp" begin="${startPage}" end="${endPage}">
						<c:if test="${currentPage==pp}">
							<a
								style="color: blue; font-size: 23px; text-decoration: none; cursor: pointer;"
								href="moimlist?category=${category}&city1=${city1}&sort=mcount&currentPage=${pp}">${pp}</a>
						</c:if>
						<c:if test="${currentPage!=pp}">
							<a style="color: black; text-decoration: none; cursor: pointer;"
								href="moimlist?category=${category}&city1=${city1}&sort=mcount&currentPage=${pp}">${pp}</a>
						</c:if>
						&nbsp;
					</c:forEach>
					<!-- 다음 -->
					<c:if test="${endPage<totalPage}">
						<a style="color: black; text-decoration: none; cursor: pointer;"
							href="moimlist?category=${category}&city1=${city1}&sort=mcount&currentPage=${endPage+1}">다음</a>
					</c:if>
				</div>
			</c:when>
			<c:when test="${category ne null and city1 ne null and city2 eq null and sort eq null}">
				<div class="moim_paging">
					<!-- 이전 -->
					<c:if test="${startPage>1}">
						<a style="color: black; text-decoration: none; cursor: pointer;"
							href="moimlist?category=${category}&city1=${city1}&currentPage=${startPage-1}">이전</a>
					</c:if>
					&nbsp;
					<!-- 페이지 번호 출력 -->
					<c:forEach var="pp" begin="${startPage}" end="${endPage}">
						<c:if test="${currentPage==pp}">
							<a
								style="color: blue; font-size: 23px; text-decoration: none; cursor: pointer;"
								href="moimlist?category=${category}&city1=${city1}&currentPage=${pp}">${pp}</a>
						</c:if>
						<c:if test="${currentPage!=pp}">
							<a style="color: black; text-decoration: none; cursor: pointer;"
								href="moimlist?category=${category}&city1=${city1}&currentPage=${pp}">${pp}</a>
						</c:if>
						&nbsp;
					</c:forEach>
					<!-- 다음 -->
					<c:if test="${endPage<totalPage}">
						<a style="color: black; text-decoration: none; cursor: pointer;"
							href="moimlist?category=${category}&city1=${city1}&currentPage=${endPage+1}">다음</a>
					</c:if>
				</div>
			</c:when>
			<c:when test="${category ne null and city1 eq null and city2 eq null and sort eq 'mcount'}">
				<div class="moim_paging">
					<!-- 이전 -->
					<c:if test="${startPage>1}">
						<a style="color: black; text-decoration: none; cursor: pointer;"
							href="moimlist?category=${category}&sort=mcount&currentPage=${startPage-1}">이전</a>
					</c:if>
					&nbsp;
					<!-- 페이지 번호 출력 -->
					<c:forEach var="pp" begin="${startPage}" end="${endPage}">
						<c:if test="${currentPage==pp}">
							<a
								style="color: blue; font-size: 23px; text-decoration: none; cursor: pointer;"
								href="moimlist?category=${category}&sort=mcount&currentPage=${pp}">${pp}</a>
						</c:if>
						<c:if test="${currentPage!=pp}">
							<a style="color: black; text-decoration: none; cursor: pointer;"
								href="moimlist?category=${category}&sort=mcount&currentPage=${pp}">${pp}</a>
						</c:if>
						&nbsp;
					</c:forEach>
					<!-- 다음 -->
					<c:if test="${endPage<totalPage}">
						<a style="color: black; text-decoration: none; cursor: pointer;"
							href="moimlist?category=${category}&sort=mcount&currentPage=${endPage+1}">다음</a>
					</c:if>
				</div>
			</c:when>
			<c:when test="${category ne null and city1 eq null and city2 eq null and sort eq null}">
				<div class="moim_paging">
					<!-- 이전 -->
					<c:if test="${startPage>1}">
						<a style="color: black; text-decoration: none; cursor: pointer;"
							href="moimlist?category=${category}&currentPage=${startPage-1}">이전</a>
					</c:if>
					&nbsp;
					<!-- 페이지 번호 출력 -->
					<c:forEach var="pp" begin="${startPage}" end="${endPage}">
						<c:if test="${currentPage==pp}">
							<a
								style="color: blue; font-size: 23px; text-decoration: none; cursor: pointer;"
								href="moimlist?category=${category}&currentPage=${pp}">${pp}</a>
						</c:if>
						<c:if test="${currentPage!=pp}">
							<a style="color: black; text-decoration: none; cursor: pointer;"
								href="moimlist?category=${category}&currentPage=${pp}">${pp}</a>
						</c:if>
						&nbsp;
					</c:forEach>
					<!-- 다음 -->
					<c:if test="${endPage<totalPage}">
						<a style="color: black; text-decoration: none; cursor: pointer;"
							href="moimlist?category=${category}&currentPage=${endPage+1}">다음</a>
					</c:if>
				</div>
			</c:when>
			<c:when test="${category eq null and city1 ne null and city2 eq null and sort eq 'mcount'}">
				<div class="moim_paging">
					<!-- 이전 -->
					<c:if test="${startPage>1}">
						<a style="color: black; text-decoration: none; cursor: pointer;"
							href="moimlist?city1=${city1}&sort=mcount&currentPage=${startPage-1}">이전</a>
					</c:if>
					&nbsp;
					<!-- 페이지 번호 출력 -->
					<c:forEach var="pp" begin="${startPage}" end="${endPage}">
						<c:if test="${currentPage==pp}">
							<a
								style="color: blue; font-size: 23px; text-decoration: none; cursor: pointer;"
								href="moimlist?city1=${city1}&sort=mcount&currentPage=${pp}">${pp}</a>
						</c:if>
						<c:if test="${currentPage!=pp}">
							<a style="color: black; text-decoration: none; cursor: pointer;"
								href="moimlist?city1=${city1}&sort=mcount&currentPage=${pp}">${pp}</a>
						</c:if>
						&nbsp;
					</c:forEach>
					<!-- 다음 -->
					<c:if test="${endPage<totalPage}">
						<a style="color: black; text-decoration: none; cursor: pointer;"
							href="moimlist?city1=${city1}&sort=mcount&currentPage=${endPage+1}">다음</a>
					</c:if>
				</div>
			</c:when>
			<c:when test="${category eq null and city1 ne null and city2 eq null and sort eq null}">
				<div class="moim_paging">
					<!-- 이전 -->
					<c:if test="${startPage>1}">
						<a style="color: black; text-decoration: none; cursor: pointer;"
							href="moimlist?city1=${city1}&currentPage=${startPage-1}">이전</a>
					</c:if>
					&nbsp;
					<!-- 페이지 번호 출력 -->
					<c:forEach var="pp" begin="${startPage}" end="${endPage}">
						<c:if test="${currentPage==pp}">
							<a
								style="color: blue; font-size: 23px; text-decoration: none; cursor: pointer;"
								href="moimlist?city1=${city1}&currentPage=${pp}">${pp}</a>
						</c:if>
						<c:if test="${currentPage!=pp}">
							<a style="color: black; text-decoration: none; cursor: pointer;"
								href="moimlist?city1=${city1}&currentPage=${pp}">${pp}</a>
						</c:if>
						&nbsp;
					</c:forEach>
					<!-- 다음 -->
					<c:if test="${endPage<totalPage}">
						<a style="color: black; text-decoration: none; cursor: pointer;"
							href="moimlist?city1=${city1}&currentPage=${endPage+1}">다음</a>
					</c:if>
				</div>
			</c:when>
			<c:when test="${category eq null and city1 ne null and city2 ne null and sort eq 'mcount'}">
				<div class="moim_paging">
					<!-- 이전 -->
					<c:if test="${startPage>1}">
						<a style="color: black; text-decoration: none; cursor: pointer;"
							href="moimlist?city1=${city1}&city2=${city2}&sort=mcount&currentPage=${startPage-1}">이전</a>
					</c:if>
					&nbsp;
					<!-- 페이지 번호 출력 -->
					<c:forEach var="pp" begin="${startPage}" end="${endPage}">
						<c:if test="${currentPage==pp}">
							<a
								style="color: blue; font-size: 23px; text-decoration: none; cursor: pointer;"
								href="moimlist?city1=${city1}&city2=${city2}&sort=mcount&currentPage=${pp}">${pp}</a>
						</c:if>
						<c:if test="${currentPage!=pp}">
							<a style="color: black; text-decoration: none; cursor: pointer;"
								href="moimlist?city1=${city1}&city2=${city2}&sort=mcount&currentPage=${pp}">${pp}</a>
						</c:if>
						&nbsp;
					</c:forEach>
					<!-- 다음 -->
					<c:if test="${endPage<totalPage}">
						<a style="color: black; text-decoration: none; cursor: pointer;"
							href="moimlist?city1=${city1}&city2=${city2}&sort=mcount&currentPage=${endPage+1}">다음</a>
					</c:if>
				</div>
			</c:when>
			<c:when test="${category eq null and city1 ne null and city2 ne null and sort eq null}">
				<div class="moim_paging">
					<!-- 이전 -->
					<c:if test="${startPage>1}">
						<a style="color: black; text-decoration: none; cursor: pointer;"
							href="moimlist?city1=${city1}&city2=${city2}&currentPage=${startPage-1}">이전</a>
					</c:if>
					&nbsp;
					<!-- 페이지 번호 출력 -->
					<c:forEach var="pp" begin="${startPage}" end="${endPage}">
						<c:if test="${currentPage==pp}">
							<a
								style="color: blue; font-size: 23px; text-decoration: none; cursor: pointer;"
								href="moimlist?city1=${city1}&city2=${city2}&currentPage=${pp}">${pp}</a>
						</c:if>
						<c:if test="${currentPage!=pp}">
							<a style="color: black; text-decoration: none; cursor: pointer;"
								href="moimlist?city1=${city1}&city2=${city2}&currentPage=${pp}">${pp}</a>
						</c:if>
						&nbsp;
					</c:forEach>
					<!-- 다음 -->
					<c:if test="${endPage<totalPage}">
						<a style="color: black; text-decoration: none; cursor: pointer;"
							href="moimlist?city1=${city1}&city2=${city2}&currentPage=${endPage+1}">다음</a>
					</c:if>
				</div>
			</c:when>
			<c:when test="${category eq null and city1 eq null and city2 eq null and sort eq 'mcount'}">
				<div class="moim_paging">
					<!-- 이전 -->
					<c:if test="${startPage>1}">
						<a style="color: black; text-decoration: none; cursor: pointer;"
							href="moimlist?sort=mcount&currentPage=${startPage-1}">이전</a>
					</c:if>
					&nbsp;
					<!-- 페이지 번호 출력 -->
					<c:forEach var="pp" begin="${startPage}" end="${endPage}">
						<c:if test="${currentPage==pp}">
							<a
								style="color: blue; font-size: 23px; text-decoration: none; cursor: pointer;"
								href="moimlist?sort=mcount&currentPage=${pp}">${pp}</a>
						</c:if>
						<c:if test="${currentPage!=pp}">
							<a style="color: black; text-decoration: none; cursor: pointer;"
								href="moimlist?sort=mcount&currentPage=${pp}">${pp}</a>
						</c:if>
						&nbsp;
					</c:forEach>
					<!-- 다음 -->
					<c:if test="${endPage<totalPage}">
						<a style="color: black; text-decoration: none; cursor: pointer;"
							href="moimlist?sort=mcount&currentPage=${endPage+1}">다음</a>
					</c:if>
				</div>
			</c:when>
			<c:when test="${category eq null and city1 eq null and city2 eq null and sort eq null}">
				<div class="moim_paging">
					<!-- 이전 -->
					<c:if test="${startPage>1}">
						<a style="color: black; text-decoration: none; cursor: pointer;"
							href="moimlist?currentPage=${startPage-1}">이전</a>
					</c:if>
					&nbsp;
					<!-- 페이지 번호 출력 -->
					<c:forEach var="pp" begin="${startPage}" end="${endPage}">
						<c:if test="${currentPage==pp}">
							<a
								style="color: blue; font-size: 23px; text-decoration: none; cursor: pointer;"
								href="moimlist?currentPage=${pp}">${pp}</a>
						</c:if>
						<c:if test="${currentPage!=pp}">
							<a style="color: black; text-decoration: none; cursor: pointer;"
								href="moimlist?currentPage=${pp}">${pp}</a>
						</c:if>
						&nbsp;
					</c:forEach>
					<!-- 다음 -->
					<c:if test="${endPage<totalPage}">
						<a style="color: black; text-decoration: none; cursor: pointer;"
							href="moimlist?currentPage=${endPage+1}">다음</a>
					</c:if>
				</div>
			</c:when>			
			<c:otherwise>
				<div class="moim_paging">
					<!-- 이전 -->
					<c:if test="${startPage>1}">
						<a style="color: black; text-decoration: none; cursor: pointer;"
							href="moimlist?currentPage=${startPage-1}">이전</a>
					</c:if>
					&nbsp;
					<!-- 페이지 번호 출력 -->
					<c:forEach var="pp" begin="${startPage}" end="${endPage}">
						<c:if test="${currentPage==pp}">
							<a
								style="color: blue; font-size: 23px; text-decoration: none; cursor: pointer;"
								href="moimlist?currentPage=${pp}">${pp}</a>
						</c:if>
						<c:if test="${currentPage!=pp}">
							<a style="color: black; text-decoration: none; cursor: pointer;"
								href="moimlist?currentPage=${pp}">${pp}</a>
						</c:if>
						&nbsp;
					</c:forEach>
					<!-- 다음 -->
					<c:if test="${endPage<totalPage}">
						<a style="color: black; text-decoration: none; cursor: pointer;"
							href="moimlist?currentPage=${endPage+1}">다음</a>
					</c:if>
				</div>
			</c:otherwise>
		</c:choose>
	</div>
	
	<form action="moimlist" method="get">
<!-- Modal -->
	<!-- The Modal -->
	<div class="modal fade" id="mySportsModal">
	  <div class="modal-dialog modal-dialog-centered">
	    <div class="modal-content">
	
	      <!-- Modal Header -->
	      <div class="modal-header">
	        <h4 class="modal-title">운동/스포츠</h4>
	        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
	      </div>
	
	      <!-- Modal body -->
	      <div class="modal-body">
	      	<table class="motable">
		      	<tr>
			      	<td><label class="tla"><input type="radio" name="categorys" value="축구">축구</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="농구">농구</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="야구">야구</label></td>    	
		      	</tr>
		      	
		      	<tr>
		      		<td><label class="tla"><input type="radio" name="categorys" value="테니스">테니스</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="배드민턴">배드민턴</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="자전거">자전거</label></td>
			      	
		      	</tr>
		      	
		      	<tr>
		      		<td><label class="tla"><input type="radio" name="categorys" value="클라이밍">클라이밍</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="탁구">탁구</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="러닝/마라톤">러닝/마라톤</label></td>
		      	</tr>
		      	
		      	<tr>
			      	<td><label class="tla"><input type="radio" name="categorys" value="골프">골프</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="볼링">볼링</label></td>
		      	</tr>
	      	</table>
	      </div>
	
	      <!-- Modal footer -->
	      <div class="modal-footer">
	        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
	      </div>
	      
	    </div>
	  </div>
	</div>

	
	<!-- The Modal -->
	<div class="modal fade" id="myGameModal">
	  <div class="modal-dialog modal-dialog-centered">
	    <div class="modal-content">
	
	      <!-- Modal Header -->
	      <div class="modal-header">
	        <h4 class="modal-title">게임/오락</h4>
	        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
	      </div>
	
	      <!-- Modal body -->
	      <div class="modal-body">
	      	<table class="motable">
		      	<tr>
			      	<td><label class="tla"><input type="radio" name="categorys" value="다트">다트</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="보드게임">보드게임</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="두뇌심리게임">두뇌심리게임</label></td>
		      	</tr>
		      	
		      	<tr>
			      	<td><label class="tla"><input type="radio" name="categorys" value="온라인게임">온라인게임</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="콘솔게임">콘솔게임</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="단체놀이">단체놀이</label></td>
		      	</tr>
		      	
		      	<tr>
			      	<td><label class="tla"><input type="radio" name="categorys" value="타로카드">타로카드</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="마술">마술</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="바둑">바둑</label></td>  
		      	</tr>
	      	</table>
	      </div>
	
	      <!-- Modal footer -->
	      <div class="modal-footer">
	        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
	      </div>
	      
	    </div>
	  </div>
	</div>
	
	<!-- The Modal -->
	<div class="modal fade" id="myTravelModal">
	  <div class="modal-dialog modal-dialog-centered">
	    <div class="modal-content">
	
	      <!-- Modal Header -->
	      <div class="modal-header">
	        <h4 class="modal-title">여행/아웃도어</h4>
	        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
	      </div>
	
	      <!-- Modal body -->
	      <div class="modal-body">
	      
	      	<table class="motable">
		      	<tr>
			      	<td><label class="tla"><input type="radio" name="categorys" value="등산">등산</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="국내여행">국내여행</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="산책/트래킹">산책/트래킹</label></td>
		      	</tr>
		      	
		      	<tr>
		      		<td><label class="tla"><input type="radio" name="categorys" value="낚시">낚시</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="해외여행">해외여행</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="캠핑/백패킹">캠핑/백패킹</label></td>
		      	</tr>
		      	
		      	<tr>
		      		<td><label class="tla"><input type="radio" name="categorys" value="패러글라이딩">패러글라이딩</label></td>
		      	</tr>
	      	</table>     
	      </div>
	
	      <!-- Modal footer -->
	      <div class="modal-footer">
	        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
	      </div>
	      
	    </div>
	  </div>
	</div>
	
	<!-- The Modal -->
	<div class="modal fade" id="myBookModal">
	  <div class="modal-dialog modal-dialog-centered">
	    <div class="modal-content">
	
	      <!-- Modal Header -->
	      <div class="modal-header">
	        <h4 class="modal-title">책/글</h4>
	        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
	      </div>
	
	      <!-- Modal body -->
	      <div class="modal-body">
	      
	      	<table class="motable">
		      	<tr>
			      	<td><label class="tla"><input type="radio" name="categorys" value="책/독서">책/독서</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="인문학">인문학</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="심리학">심리학</label></td>      	
		      	</tr>
		      	
		      	<tr>
		      		<td><label class="tla"><input type="radio" name="categorys" value="철학">철학</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="역사">역사</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="시사/경제">시사/경제</label></td>  	
		      	</tr>
		      	
		      	<tr>
		      		<td><label class="tla"><input type="radio" name="categorys" value="작문/글쓰기">작문/글쓰기</label></td>
		      	</tr>
		    </table>
	      </div>
	
	      <!-- Modal footer -->
	      <div class="modal-footer">
	        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
	      </div>
	      
	    </div>
	  </div>
	</div>
	
	<!-- The Modal -->
	<div class="modal fade" id="myWorkModal">
	  <div class="modal-dialog modal-dialog-centered">
	    <div class="modal-content">
	
	      <!-- Modal Header -->
	      <div class="modal-header">
	        <h4 class="modal-title">업족/직무</h4>
	        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
	      </div>
	
	      <!-- Modal body -->
	      <div class="modal-body">
	      	<table class="motable">
		      	<tr>
			      	<td><label class="tla"><input type="radio" name="categorys" value="의료/건강/제약">의료/건강/제약</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="IT/포털/인터넷">IT/포털/인터넷</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="교육업">교육업</label></td> 	
		      	</tr>
		      	
		      	<tr>
		      		<td><label class="tla"><input type="radio" name="categorys" value="광고/마케팅업계">광고/마케팅업계</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="디자인업계  ">디자인업계</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="무역/상사">무역/상사</label></td>      	
		      	</tr>
		      	
		      	<tr>
		      		<td><label class="tla"><input type="radio" name="categorys" value="금융업">금융업</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="세무/회계">세무/회계</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="전자/기계/전기">전자/기계/전기</label></td>  	
		      	</tr>
		      	
		      	<tr>
		      		<td><label class="tla"><input type="radio" name="categorys" value="패션/의류/뷰티">패션/의류/뷰티</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="서비스업">서비스업</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="식음료/외식업">식음료/외식업</label></td>
		      	</tr>      	
	      	</table>
	      </div>
	
	      <!-- Modal footer -->
	      <div class="modal-footer">
	        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
	      </div>
	      
	    </div>
	  </div>
	</div>
	
	<!-- The Modal -->
	<div class="modal fade" id="myLangModal">
	  <div class="modal-dialog modal-dialog-centered">
	    <div class="modal-content">
	
	      <!-- Modal Header -->
	      <div class="modal-header">
	        <h4 class="modal-title">외국/언어</h4>
	        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
	      </div>
	
	      <!-- Modal body -->
	      <div class="modal-body">
	      	<table class="motable">
		      	<tr>
			      	<td><label class="tla"><input type="radio" name="categorys" value="영어">영어</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="일본어">일본어</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="중국어">중국어</label></td>
			      	
		      	</tr>
		      	
		      	<tr>
		      		<td><label class="tla"><input type="radio" name="categorys" value="프랑스어">프랑스어</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="스페인어">스페인어</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="러시아어">러시아어</label></td>
		      	</tr>
	      	</table>
	      </div>
	
	      <!-- Modal footer -->
	      <div class="modal-footer">
	        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
	      </div>
	      
	    </div>
	  </div>
	</div>
	
	<!-- The Modal -->
	<div class="modal fade" id="myMusicModal">
	  <div class="modal-dialog modal-dialog-centered">
	    <div class="modal-content">
	
	      <!-- Modal Header -->
	      <div class="modal-header">
	        <h4 class="modal-title">음악/악기</h4>
	        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
	      </div>
	
	      <!-- Modal body -->
	      <div class="modal-body">
	      	<table class="motable">
		      	<tr>
			      	<td><label class="tla"><input type="radio" name="categorys" value="노래/보컬">노래/보컬</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="기타/베이스">기타/베이스</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="드럼">드럼</label></td>   	
		      	</tr>
		      	
		      	<tr>
		      		<td><label class="tla"><input type="radio" name="categorys" value="피아노">피아노</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="바이올린">바이올린</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="밴드/합주">밴드/합주</label></td>	      	
		      	</tr>
		      	
		      	<tr>
		      		<td><label class="tla"><input type="radio" name="categorys" value="작사/작곡">작사/작곡</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="힙합">힙합</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="클래식">클래식</label></td>      	
		      	</tr>
		      	
		      	<tr>
		      		<td><label class="tla"><input type="radio" name="categorys" value="재즈">재즈</label></td>
		      	</tr>      	
	      	</table>
	      </div>
	
	      <!-- Modal footer -->
	      <div class="modal-footer">
	        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
	      </div>
	      
	    </div>
	  </div>
	</div>
	
	<!-- The Modal -->
	<div class="modal fade" id="mySocialModal">
	  <div class="modal-dialog modal-dialog-centered">
	    <div class="modal-content">
	
	      <!-- Modal Header -->
	      <div class="modal-header">
	        <h4 class="modal-title">사교/인맥</h4>
	        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
	      </div>
	
	      <!-- Modal body -->
	      <div class="modal-body">
	      	<table class="motable">
		      	<tr>
			      	<td><label class="tla"><input type="radio" name="categorys" value="지역">지역</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="나이">나이</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="성별">성별</label></td>
		      	</tr>
		      	
		      	<tr>
		      		<td><label class="tla"><input type="radio" name="categorys" value="싱글/연애">싱글/연애</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="기혼/유부">기혼/유부</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="돌싱">돌싱</label></td> 	
		      	</tr>
		      	
		      	<tr>
		      		<td><label class="tla"><input type="radio" name="categorys" value="와인/커피/차">와인/커피/차</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="맛집/미식회">맛집/미식회</label></td>
		      	</tr>
	      	</table>
	      </div>
	
	      <!-- Modal footer -->
	      <div class="modal-footer">
	        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
	      </div>
	      
	    </div>
	  </div>
	</div>
	
	<!-- The Modal -->
	<div class="modal fade" id="myCraftsModal">
	  <div class="modal-dialog modal-dialog-centered">
	    <div class="modal-content">
	
	      <!-- Modal Header -->
	      <div class="modal-header">
	        <h4 class="modal-title">공예/만들기</h4>
	        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
	      </div>
	
	      <!-- Modal body -->
	      <div class="modal-body">
	      	<table class="motable">
		      	<tr>
			      	<td><label class="tla"><input type="radio" name="categorys" value="미술/그림">미술/그림</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="캘리그라피">캘리그라피</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="천연비누/화장품">천연비누/화장품</label></td>
		      	</tr>
		      	
		      	<tr>
			      	<td><label class="tla"><input type="radio" name="categorys" value="가죽공예">가죽공예</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="가구/목공예">가구/목공예</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="도자/점토공예">도자/점토공예</label></td>
			      	
		      	</tr>
		      	
		      	<tr>
		      		<td><label class="tla"><input type="radio" name="categorys" value="자수/뜨개질">자수/뜨개질</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="키덜트/프라모델">키덜트/프라모델</label></td>
			      	<td><label class="tla"><input type="radio" name="categorys" value="메이크업/네일">메이크업/네일</label></td>
		      	</tr>
		      	
		      	<tr>
		      		<td><label class="tla"><input type="radio" name="categorys" value="캔들/디퓨저/석고 ">캔들/디퓨저/석고</label></td>
		      	</tr>	
	      	</table>
	      </div>
	
	      <!-- Modal footer -->
	      <div class="modal-footer">
	        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
	      </div>
	      
	    </div>
	  </div>
	</div>
	</form>
	<script> 
$(function() {
 	   // 체크박스 값이 변경될 때마다 실행되는 함수
  	  $('input[name="categorys"]').on('change', function() {
      // 모든 체크박스를 해제
      //$('input[name="category"]').not(this).prop('checked', false);
      
      // 선택된 체크박스 값을 출력
      var selected = $(this).val();
      $('.selcategory').text(selected);
      $('#selcategory').val(selected);

      
    });
    
 	// 셀렉트 값이 변경될 때마다 실행되는 함수
 	 $('select[name="city1"]').on('change', function() {      
      // 선택된 값을 출력
      var selected = $(this).val();
      $('#seldistrict1').text(selected);
      $('.seldistrict1').val(selected);
    });
 	
    $('select[name="city2"]').on('change', function() {      
      // 선택된 값을 출력
      var selected = $(this).val();
      $('#seldistrict2').text(selected);
      $('.seldistrict2').val(selected);
    });
  });
	
	  // 현재 사용자의 세션에서 unum 값을 가져옵니다.
	  //const unum = sessionStorage.getItem('unum');
	  // unum 값이 null인 경우에만 alert을 호출합니다.
	  $("#moim_table").click(function(e) {
	 	 if (${sessionScope.unum == null}) {
	 	   alert('로그인을 해주세요.');
		   event.preventDefault(); // 링크 이동을 막습니다.
	  	   location.href="/user/login"
	  }	  
		
	});

	
	function checkCreate(event) {
		  // 현재 사용자의 세션에서 unum 값을 가져옵니다.
		  //const unum = sessionStorage.getItem('unum');
		  // unum 값이 null인 경우에만 alert을 호출합니다.
		  if (${unum} === 0) {
		    alert('로그인을 해주세요.');
		    event.preventDefault(); // 링크 이동을 막습니다.
		    location.href="/user/login"
		  }else{
			  location.href="/moim/moimform"
		  }
		 }
		 
	document.addEventListener("DOMContentLoaded", function() {
  		var buttonId = "heading_moim"; // 해당 버튼의 고유한 ID로 변경해야 합니다.
  		var clickedButton = document.getElementById(buttonId);
  
  		if (clickedButton) {
    		clickedButton.style.color = "orange"; // 버튼의 스타일을 주황색으로 변경합니다.
  		}
	});
</script>
</body>
</html>