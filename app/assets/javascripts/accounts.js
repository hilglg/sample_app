function clickCol() {
	alert("haha");

}

var iSelectedIndex =-1;
function chooseRow(obj) {
	var table = obj.parentElement.parentElement;

	var oldSelectedIndex = iSelectedIndex;
	
	iSelectedIndex = obj.innerHTML;

	if (obj.parentElement.style.background == "green") {
		obj.parentElement.style.background ="";
	} else {
		if (oldSelectedIndex != -1) {
			table.rows(oldSelectedIndex-1).style.background="";	
		}
		obj.parentElement.style.background ="green";
	}
}

function editAccount(obj){
	if (iSelectedIndex == -1){
		alert("Please select target row to edit");
	} else {
		obj.href= "/accounts/"+iSelectedIndex+"/edit";
	}
}
