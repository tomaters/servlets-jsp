<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="/error/error.jsp"%>
<h2>include</h2>
<%
    String name = "no";
%>
<%@ include file="top.jsp"%>
include more content
<%@ include file="bottom.jsp"%>