package com.example.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class LoginServlet extends HttpServlet {

    private static final Logger logger = LoggerFactory.getLogger(LoginServlet.class);

    /**
    * @see HttpServlet#HttpServlet()
    */
    public LoginServlet() {
        super();
    }

    /**
     * Getでリクエストが来たときの処理
     * login.jspを画面に表示する
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        logger.info("Debug OK");

        request.getRequestDispatcher("/public_html/login.jsp").forward(request, response);
    }
}
