package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz05")
public class GetMethodQuiz01 extends HttpServlet{

		@Override
		public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
			//한글 깨짐 방지 -> plain
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html");
			
			//Request Parameter
			int number = Integer.parseInt(request.getParameter("number"));
			
			//출력
			PrintWriter out = response.getWriter();
			out.print("<html><head><title>구구단</title></head><body><ul>");
			for(int i = 1; i <= 9; i++) {		
				out.print("<li>" + number + "X" + i + "=" + (number * i) + "</li>");
			}
			out.print("<ul></body></html>");
		}
		
}
