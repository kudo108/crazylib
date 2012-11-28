function moveCloud(){
	var px = $("body").css("background-position-x");
	px = parseInt(px.replace("px",""))+1+"px";
	if(px == "5000px") px = "1px";
	$("body").css("background-position-x",px);
	setTimeout(moveCloud,100);
}
setTimeout(moveCloud,100)