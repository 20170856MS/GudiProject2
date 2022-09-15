$(function() {	
	$('.gnb_menu .gnb > li').on('mouseenter', function(e){
		$(this).addClass('active').siblings().removeClass('active');
		e.preventDefault();
	});

	$('.gnb_menu .gnb > li > a').on('focusin mouseenter', function(e){
		var maxHeight = $(".gnb_menu .gnb .depth2").map(function(){
			return $(this).height();
		}).get(),
		menuHeight = Math.max.apply(null, maxHeight);			
		
		$('.gnb_inner').addClass('mainMenuOpen');
		$('.gnb_menu .gnb .dep2').css({ height : menuHeight+22},10);
		$('#navBg').css({ height : menuHeight+22},50);
		$('.gnb_menu .gnb .depth2').stop().fadeIn(0);
		e.preventDefault();
	});
	
	$('.gnb_menu').on('mouseleave', function(e){
		gnbClose();
		e.preventDefault();
	});
	
	$('.gnb_menu').find('li').last().find('a').on('focusout', function(){
		gnbClose();		
	});
	
	function gnbClose(){	
		$('.gnb_inner').removeClass('mainMenuOpen');
		$('#navBg').css({ height : '0px'},100);
		$('.gnb_menu .gnb .dep2').css({ height : '0px'});
		$('.gnb_menu .gnb > li').removeClass('active');
		$('.gnb_menu .gnb .depth2').hide(0);		
	}
	
	$('.hashClose').on('click', function(e){
		$(this.hash).slideUp(100);
		$("#util #fullMenuOpen").focus();
		e.preventDefault();
	});
	
	$('.hashToggle').on('click', function(e){		
		($(this).hasClass('active') == true)? $(this).removeClass('active') : $(this).addClass('active');
		$(this.hash).slideToggle(100);
		$(this.hash).find("#qt").focus();
		e.preventDefault();
	});
});