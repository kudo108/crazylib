function moveCloud(){
	var px = $("body").css("background-position-x");
	px = parseInt(px.replace("px",""))+1+"px";
	if(px == "5000px") px = "1px";
	$("body").css("background-position-x",px);
	setTimeout(moveCloud,100);
}
//setTimeout(moveCloud,100)
//page-----------------------------------------------
$(document).ready(function(){
	var toogle_science = 0;
	$('#science li a').bind("click",function(event){
		event.preventDefault();
		var page = $(this).text();
		var active = 0;
		var sciences = $('#science li a');
		//check button active
		for(var i=0;i<sciences.length;i++){
			if($('#science li:nth-child('+i+')').attr('class')=="active") active = i-1;
			}
		//when click button, that isn't Next or prev  	
		if(page!="Prev"&&page!="Next"){
			$('#science li:nth-child('+(active+1)+')').attr('class','');
			$('#science li:nth-child('+(parseInt(page)+1)+')').attr('class','active');
			$('#science-'+active).fadeOut();
			$('#science-'+page).fadeIn();
		}
		//whien click prev button
		if(page=="Prev"){
		if(active >1 ){
			$('#science li:nth-child('+(active+1)+')').attr('class','');
			$('#science li:nth-child('+active+')').attr('class','active');
			$('#science-'+ active).fadeOut();
			$('#science-'+(active-1)).fadeIn();
		}
		}
		if(page=="Next"){
			if(active<sciences.length-2){
				$('#science li:nth-child('+(active+2)+')').attr('class','active');
				$('#science li:nth-child('+(active+1)+')').attr('class','');
				$('#science-'+ active).fadeOut();
				$('#science-'+(active+1)).fadeIn();
			}
		}
	})
	//view all book of one topic
	$("#all-sciences").bind("click",function(event){
		event.preventDefault();
		var sciences = $('#science li a');
		if(toogle_science%2==0)
		{
		$('[id^="science-"]').fadeOut();
		$('[id^="science-"]').fadeIn();
		}
		else
		{
		$('[id^="science-"]').fadeOut();
		$('#science-1').fadeIn();
		}
		toogle_science++;
	})
	
	
})


