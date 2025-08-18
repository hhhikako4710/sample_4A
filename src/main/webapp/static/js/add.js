/**
 * 
 */

//オプション課題1　商品追加画面での商品名入力チェック
function water_check(){
	 //商品名情報取得 
	 const name_add = document.getElementById("item_name").value.trim; 
	 //商品価格取得 
	 const price = document.getElementById("item_price").value.trim(); 
	 //もし商品名に「水」が含まれ、価格が10000以上に設定されたら
	 if(name_add.includes("水") && price >= 10000){ 
		alert("価格は10,000未満にしてください。"); 
		//フォームを送信しない
		return false; 
	}
	//フォームを送信する
	 return true; 
 }