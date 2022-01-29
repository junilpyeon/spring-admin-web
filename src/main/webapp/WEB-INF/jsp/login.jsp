<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">
<head>
<% session.invalidate(); %>
<link href="/"/>
<link href="../assets/css/black-dashboard.css?v=1.0.0" rel="stylesheet" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <title>Spring Security Example </title>
    <div th:replace="fragments/header :: header-css"/>
</head>
<body>

<div th:replace="fragments/header :: header"/>

<div class="container">

    <div class="row" style="margin-top:20px">
        <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
            <form action="/login" method="post">
                <fieldset>
                    <h1>Please Log In</h1>
<c:if test="${param.error==0}">
                    <div th:if="${param.error}">
                        <div class="alert alert-danger">
                            ID또는 PW가 잘못되었습니다.
                        </div>
                    </div>
</c:if>
					<div th:if="${param.error}">
                        <div class="alert alert-warning">
                                                        올바른 ID, PW를 입력해주세요
                        </div>
                    </div>
                    <div class="form-group">
                        <input type="text" name="username" id="username" class="form-control input-lg"
                               placeholder="UserName" required="true" autofocus="true" value="parkng5"/>
                    </div>
                    <div class="form-group">
                        <input type="password" name="password" id="password" class="form-control input-lg"
                               placeholder="Password" required="true" value="tjsvndrl3#"/>
                    </div>

                    <div class="row">
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <input type="submit" class="btn btn-lg btn-primary btn-block" value="Log In"/>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6">
                        </div>
                    </div>
                </fieldset>
            </form>
        </div>
    </div>

</div>

<div th:replace="fragments/footer :: footer"/>

</body>
</html>