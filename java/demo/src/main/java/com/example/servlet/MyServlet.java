package com.example.servlet;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


public class MyServlet extends HttpServlet {

  private static final long serialVersionUID = 1L;
  private static final Logger logger = LoggerFactory.getLogger(MyServlet.class);

  /**
   * @see HttpServlet#HttpServlet()
   */
  public MyServlet() {
      super();
  }

  /**
   * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
   *      response)
   */
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
      logger.info("Debug OK");
      response.getWriter().append("Hello Java!");
  }

  /**
   * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
   *      response)
   */
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
      doGet(request, response);
  }

}