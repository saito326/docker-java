<%@ page contentType="text/html; charset=UTF-8" %>


<!DOCTYPE html>
<html lang="ja">
<head>
    <meta http-equiv="content-type" content="text/html charset=UTF-8">
    <title>ログイン画面</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/public_html/css/main.css" type="text/css">
</head>

<body>
    <div class="login-page">
        <!-- リクエストスコープからエラーメッセージを受け取る -->
        <%String failureMessage=(String)request.getAttribute("loginFailure"); %>

        <!-- エラーメッセージが存在するときだけ表示する -->
        <% if (failureMessage !=null) {%>
            <%=failureMessage %>
                <%} %>

        <!-- ログインフォーム。ユーザーIDとパスワードの入力を行う -->
        <div class="form">
            <div class='login-form'>
                <form action="Login" method="post">
                    <input type="text" name="user_id" placeholder="username">
                    <input type="password" name="password" placeholder="password">
                    <input type="submit" value="ログイン">
                </form>                
            </div>
        </div>
    </div>
</body>

</html>