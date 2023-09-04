package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex03")
public class GetMethodEx03 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//add comment
		
		//한글 깨짐 방지 -> plain
//		response.setCharacterEncoding("utf-8");
//		response.setContentType("text/plain");
		
		//한글 깨짐 방지 -> json string
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");
		
		//Request Parameter
		String userId = request.getParameter("user_id");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		
		//출력
		PrintWriter out = response.getWriter();
//		out.println("user_id:" + userId);
//		out.println("name:" + name);
//		out.println("age:" + age);
		
		//JSON으로 출력
		//{"user_id" : "yujg", "name":"김윤정", "age":30}
		out.print("{\"user_id\":\"" + userId + "\", \"name\":\""
				+ name + "\", \"age\":" + age + "}");
	}
}
