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
	var history = 0;
	$("#science li a").click(function(event){
			event.preventDefault();
			var page = $(this).text();
			if(page!="Prev"&&page!="Next"){
			$.get("page?id=1&page="+page,function(data){
			history=page;
			$("#science-content").html(data);
			});
			}
	});
	$("#science li").click(function(event){
		event.preventDefault();
		var li = $("#science li");
			for(var i=0;i<li.length;i++){
			li[i].className = "";
		}
		if($(this).text()=="Prev"||$(this).text()=="Next"){
			var n=0;
			if($(this).text()=="Prev"){
			 if(history==1) n=1;else n= history-1;
			 $("#science li")[n].className="active";	
			}
			if($(this).text()=="Next"){
			 $("#science li")[history+1].className="active";	
			}
		} else
		$(this)[0].className = "active";
	});
	$('#science-prev').click(function(event){
		event.preventDefault();
		var page = parseInt(history) - 1;
		if(page<=0) page=1;
		$.get("page?id=1&page="+page,function(data){
			history=page;
			$("#science-content").html(data);
		});
	});
	$('#science-next').click(function(event){
		event.preventDefault();
		var page = parseInt(history) + 1;
		$.get("page?id=1&page="+page,function(data){
			history=page;
			if(data=="") history=page-1;
			if(data!="")
			$("#science-content").html(data);
		});
	});
	//slide
	$("#next-slide").click(function(event){
		event.preventDefault();
		
		});
	
	$("#prev-slide").click(function(event){
		event.preventDefault();
		});	
	
		
})


