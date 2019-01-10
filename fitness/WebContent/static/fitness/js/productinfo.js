function change(n) {
    var amount = parseInt($("#buyNumInp").val());
    if(amount<=1 && n<0) {
      return;
    }
    
    $("#buyNumInp").val(amount + n);
}
function toCart(sourceUrl){
	var amount=$("#buyNumInp").val()
	var url=sourceUrl+"/"+amount;
	window.location.href=url;
}