function clickCol() {
	alert("haha");

}

var oldSelectedObj = null;
function chooseRow(obj) {
	var objSelectedObj = obj;
	
	//objSelectedObj = obj.innerHTML;
//alert(objSelectedObj.style.background);
	if (objSelectedObj.style.background.indexOf("green") !=-1) {
		objSelectedObj.style.background ="";
	} else {
		if (oldSelectedObj != null) {
			oldSelectedObj.style.background="";	
		}
		objSelectedObj.style.background ="green";
	}

	oldSelectedObj = objSelectedObj;
}

function editAccount(obj){
	if (oldSelectedObj == null){
		alert("Please select target row to edit");
	} else {
		obj.href= "/accounts/"+oldSelectedObj.innerHTML+"/edit";
	}
}
