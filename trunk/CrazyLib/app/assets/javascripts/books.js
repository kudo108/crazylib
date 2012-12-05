function moveCloud(){
	var px = $("body").css("background-position-x");
	px = parseInt(px.replace("px",""))+1+"px";
	if(px == "5000px") px = "1px";
	$("body").css("background-position-x",px);
	setTimeout(moveCloud,100);
}
setTimeout(moveCloud,100)
//page-----------------------------------------------
$(document).ready(function(){
			function paging(topic){
			var toogle_science = 0;
			$('#auto-'+topic+' li a').bind("click",function(event){
				event.preventDefault();
				var page = $(this).text();
				var active = 0;
				var sciences = $('#auto-'+topic+' li a');
				//check button active
				for(var i=0;i<sciences.length;i++){
					if($('#auto-'+topic+' li:nth-child('+i+')').attr('class')=="active") active = i-1;
					}
				//when click button, that isn't Next or prev  	
				if(page!="Prev"&&page!="Next"){
					$('#auto-'+topic+' li:nth-child('+(active+1)+')').attr('class','');
					$('#auto-'+topic+' li:nth-child('+(parseInt(page)+1)+')').attr('class','active');
					$('#auto-'+topic+'-'+active).fadeOut();
					$('#auto-'+topic+'-'+page).fadeIn();
				}
				//whien click prev button
				if(page=="Prev"){
				if(active >1 ){
					$('#auto-'+topic+' li:nth-child('+(active+1)+')').attr('class','');
					$('#auto-'+topic+' li:nth-child('+active+')').attr('class','active');
					$('#auto-'+topic+'-'+ active).fadeOut();
					$('#auto-'+topic+'-'+(active-1)).fadeIn();
				}
				}
				if(page=="Next"){
					if(active<sciences.length-2){
						$('#auto-'+topic+' li:nth-child('+(active+2)+')').attr('class','active');
						$('#auto-'+topic+' li:nth-child('+(active+1)+')').attr('class','');
						$('#auto-'+topic+'-'+ active).fadeOut();
						$('#auto-'+topic+'-'+(active+1)).fadeIn();
					}
				}
			})
			//view all book of one topic
			$("#all-auto-"+topic+"").bind("click",function(event){
				event.preventDefault();
				
				if(toogle_science%2==0)
				{
				$('.books-content').fadeOut();
				$('#lauto-'+topic+'-books').fadeIn();
				$('[id^="auto-'+topic+'-"]').fadeOut();
				$('[id^="auto-'+topic+'-"]').fadeIn();
				
				}
				else
				{
				$('.books-content').fadeIn();
				$('[id^="auto-'+topic+'-"]').fadeOut();
				$('#auto-'+topic+'-1').fadeIn();
				}
				toogle_science++;
			})
			}
	var topics = $(".topic").length;
	for(var i=0;i<topics;i++){
		topic = $('.topic:eq('+i+')').text();
		paging(topic);
	}
})


