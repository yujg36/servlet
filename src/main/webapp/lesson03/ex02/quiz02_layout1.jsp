<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멜롱차트</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<Style>
header {height:80px;}
nav {height: 50px;}
.contents {min-height: 100px;}
footer {height: 50px;}
.menu .menu-link-text {color:black; font-weight: bold;}
</Style>

<%
// 아티스트 정보 

    Map<String, Object> artistInfo = new HashMap<>();
    artistInfo.put("name", "아이유");
    artistInfo.put("debute", 2008);
    artistInfo.put("agency", "EDAM엔터테인먼트");
    artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");


// 아이유 노래 리스트 
    List<Map<String, Object>> musicList = new ArrayList<>();

    Map<String, Object> musicInfo = new HashMap<>();
    musicInfo.put("id", 1);
    musicInfo.put("title", "팔레트");
    musicInfo.put("album", "Palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 2);
    musicInfo.put("title", "좋은날");
    musicInfo.put("album", "Real");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
    musicInfo.put("time", 233);
    musicInfo.put("composer", "이민수");
    musicInfo.put("lyricist", "김이나");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 3);
    musicInfo.put("title", "밤편지");
    musicInfo.put("album", "palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
    musicInfo.put("time", 253);
    musicInfo.put("composer", "제휘,김희원");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 4);
    musicInfo.put("title", "삐삐");
    musicInfo.put("album", "삐삐");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "이종훈");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 5);
    musicInfo.put("title", "스물셋");
    musicInfo.put("album", "CHAT-SHIRE");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 6);
    musicInfo.put("title", "Blueming");
    musicInfo.put("album", "Love poem");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);
%>

</head>
<body>
	<div id="wrap" class="container">
		<header class="d-flex">
			 <div class="logo col-3 d-flex align-items-center">
                    <h2 class="text-success">Melong</a></h2>
             </div>
             <div class="search col-7 d-flex align-items-end">
                    <div class="searchbar col-7"> 
                        <div class="input-group mb-3">
                            <input type="text" class="form-control">
                            <button class="btn btn-info" type="button">검색</button>
                        </div>
                    </div>
             </div>
		</header>
		<nav class="menu">
			<ul class="nav">
				<li class="nav-item"><a href="#" class="nav-link menu-link-text">멜롱차트</a></li>
				<li class="nav-item"><a href="#" class="nav-link menu-link-text">최신음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link menu-link-text">장르음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link menu-link-text">멜롱DJ</a></li>
				<li class="nav-item"><a href="#" class="nav-link menu-link-text">뮤직어워드</a></li>
			</ul>
		</nav>
		<section class="contents d-flex border border-success">
			 <section class="col-4 pt-2 mb-2 d-flex">
                    <img src="<%= artistInfo.get("photo") %>" alt="아이유 사진" width="120" height="130">
                    <div class="ml-3">
	                   <h4><b><%=artistInfo.get("name") %></b></h4>
	                   <div><%=artistInfo.get("agency") %></div>
	                   <div><%=artistInfo.get("debute") %>데뷔</div>
            		</div>	
             </section>
         </section>
         <section>
         <h4 class="mt-4 font-weight-bold">곡 목록</h4>
			<table class="table text-center">
			<thead>
				<tr> 
					<th>no</th>
					<th>제목</th>
					<th>앨범</th>
				</tr>
			</thead>
			<tbody>
			<%
				
				for (Map<String, Object> item : musicList) {
			%>	
				<tr>
					<td><%=item.get("id") %></td>
					<td><a href="/lesson03/ex02/quiz02_layout2?id=<%=item.get("id") %>" class="text-decoration-none"><%=item.get("title") %></a></td>
					<td><%=item.get("album") %></td>
					
				</tr>
			<%
				}
			%>
			</tbody>
			
			</table>
		</section>
		<footer>
			Copyright © Melong 2023 All Rights Reserved
		</footer>
	</div>
</body>
</html>