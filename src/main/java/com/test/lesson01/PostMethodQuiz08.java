package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz08")
public class PostMethodQuiz08 extends HttpServlet{

	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "yujg36");
	        put("password", "qwerty1234");
	        put("name", "김윤정");
	    }
	};
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//한글 깨짐 방지 + HTML
		response.setContentType("text/html");
		
		//Request Params
		String userId = request.getParameter("userId");
		String password = request.getParameter("password");
				
		//내용 출력
		PrintWriter out = response.getWriter();
		out.print("<html><head><title>결과</title></head><body>");
		if(userId.equals(userMap.get("userId")) == false) {
			out.print("아이디가 일치하지 않습니다.");
		} else if (password.equals(userMap.get("password")) == false) {
			out.print("비밀번호가 일치하지 않습니다.");
		} else {
		out.print(userMap.get("name") + "님 환영합니다!!!");
		}
		out.print("</body></html>");
	}
}
