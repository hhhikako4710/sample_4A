<%------------------------------------------------------------------------------
  演習番号  ：プロトタイプ演習
  JSP名     ：edit.jsp
  作成日    ：2025/04/01
  作成者    ：FLM Uzawa
  ------------------------------------------------------------------------------
  修正履歴 (修正日：担当者：修正内容)
  [2025/8/18]：[HinakoTakada/SYS]：[商品名に未入力チェック追加]
  [2025/8/18]：[HinakoTakada/SYS]：[商品説明に未入力チェック追加]
  [2025/8/18]：[HinakoTakada/SYS]：[商品価格に未入力チェック追加]
  [2025/8/18]：[HinakoTakada/SYS]：[オプション課題1　フォーム送信時に商品編集画面の商品名入力チェックJavaScript関数の実行とJavaScriptの読み込み]
  ------------------------------------------------------------------------------%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ja">
<head>
	<%-- <head>タグ内定義情報のinclude --%>
	<jsp:include page="./include/headcontent.jsp" flush="true" />
    <title>商品編集</title>
</head>
<body class="body">
<%-- ヘッダーのinclude --%>
<jsp:include page="./include/header.jsp" flush="true" />
<main class="container mx-auto main"">
    <header class="row mb-3 mt-2">
        <h1>商品情報編集</h1>
    </header>
    <form method="post" action="./edit-complete" onsubmit="return water_check();">
    	<input type="hidden" name="shop_id" value="<c:out value="${shop.shopId}" />">
    	<input type="hidden" name="item_id" value="<c:out value="${item.itemId}" />">
		<div class="card mb-3">
			<div class="card-header"><c:out value="${shop.shopName}" />：商品情報編集</div>
			<div class="card-body">
				<div>
					<div class="mb-3">
		                <label class="form-label" for="item_id">ID：</label>
		                <input  type="text" class="form-control" id="item_id" 
		                	value="<c:out value="${item.itemId}" />" disabled>
	            	</div>
					<div class="mb-3">
		                <label class="form-label" for="item_name">名称：</label>
		                <input  type="text" class="form-control" id="item_name" name="item_name" 
		                	value="<c:out value="${item.itemName}" />" maxlength="20" required>
	            	</div>
					<div class="mb-3">
		                <label class="form-label" for="item_describe">説明：</label>
		                <textarea class="form-control" id="item_describe" name="item_describe" 
		                	maxlength="200" required><c:out value="${item.itemDescribe}" /></textarea>
	            	</div>
					<div class="mb-3">
		                <label class="form-label" for="item_price">価格：</label>
		                <input type="number" class="form-control" id="item_price" name="item_price"
		                	value="<c:out value="${item.itemPrice}" />" min="1" max="9999999999" maxlength="10" required>
	            	</div>            	
				</div>
				<div class="d-md-flex justify-content-md-end">
					<button id="item_edit" type="submit" class="btn btn-primary">商品編集</button>
				</div>
			</div>
		<div>
	</form>
</main>
<%-- 共通jsファイルの読み込み --%>
<jsp:include page="./include/jsfile.jsp" flush="true" />
<%-- ページ固有jsファイルの読み込み --%>
<script src="./static/js/edit.js"></script>
</body>
</html>
