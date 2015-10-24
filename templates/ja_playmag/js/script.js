/** 
 *------------------------------------------------------------------------------
 * @package       T3 Framework for Joomla!
 *------------------------------------------------------------------------------
 * @copyright     Copyright (C) 2004-2013 JoomlArt.com. All Rights Reserved.
 * @license       GNU General Public License version 2 or later; see LICENSE.txt
 * @authors       JoomlArt, JoomlaBamboo, (contribute to this project at github 
 *                & Google group to become co-author)
 * @Google group: https://groups.google.com/forum/#!forum/t3fw
 * @Link:         http://t3-framework.org 
 *------------------------------------------------------------------------------
 */
(function($){
    $(document).ready(function(){
	   // Fix width of search alway 100%
	   if($('.nav-search').length > 0){
		  if($('.nav-search').find('.nav-child.dropdown-menu').length > 0){
			$('.nav-search').find('.nav-child.dropdown-menu').css('width',$('#t3-header').find('.container').width() + parseInt($('#t3-header').find('.container').css('padding-left'))+parseInt($('#t3-header').find('.container').css('padding-right')));
		  }
		  $(window).bind('orientationchange resize',function(){
			if($('.nav-search').find('.nav-child.dropdown-menu').length > 0){
				$('.nav-search').find('.nav-child.dropdown-menu').css('width',$('#t3-header').find('.container').width() + parseInt($('#t3-header').find('.container').css('padding-left'))+parseInt($('#t3-header').find('.container').css('padding-right')));
			  }		
		  });
	   }
       //Check class tpl_change_layout
       if($('.tpl_change_layout').length > 0){
           var elfirst      =  $('.tpl_change_layout').parent().parent();
           $('.tpl_change_layout span').on('click',function(){
               //Check elfirst remove all class
               elfirst.removeClass('grid small-list big-list');
               $('.tpl_change_layout span').removeClass('active');
               elfirst.addClass($(this).html());
               $(this).addClass('active');
           });
       }
       $('.rating-score').click(function(event){
			event.preventDefault();

			//get the full url - like mysitecom/index.htm#home
			var full_url = $(this).attr('href');

			//split the url by # and get the anchor target name - home in mysitecom/index.htm#home
			var parts = full_url.split("#");
			var trgt = parts[1];

			//get the top offset of the target anchor
			var target_offset = $("."+trgt).offset();
			var target_top = target_offset.top;

			//goto that anchor by setting the body scroll top to anchor top
			$('html, body').animate({scrollTop:target_top-30}, 400, 'easeInSine');
			
	   });
	   
       $(".ja-healineswrap em, .t3-bottomslider .module-title span").html(function(index, old) {
			    return old.replace(/(\b\w+)$/, '<span class="last-word">$1</span>');
			});
			
		$('iframe').each(function(){
			var url = $(this).prop("src").toString();
			if(url.indexOf('youtube.com') >0){
				if(url.indexOf('wmode=transparent')<0){
					if(url.indexOf('?') > 0) {
						$(this).attr('src',url+'&wmode=transparent');
					}else{
						$(this).attr('src',url+'?wmode=transparent');
					}
				}			
			}		
    	});
    });
})(jQuery);

(function($) {

    var scrollLastPos = 0,
        scrollDir = 0, // -1: up, 1: down
        scrollTimeout = 0;
	$(window).on ('scroll', function (e) {
        var st = $(this).scrollTop();
        //Determines up-or-down scrolling
        if (st < 80) {
            if (scrollDir != 0) {
                scrollDir = 0;
                scrollToggle();
            }
        } else if (st > scrollLastPos){
            //Replace this with your function call for downward-scrolling
            if (scrollDir != 1) {
                scrollDir = 1;
                scrollToggle();
            }
        } else if (st < scrollLastPos){
            //Replace this with your function call for upward-scrolling
            if (scrollDir != -1) {
                scrollDir = -1;
                scrollToggle();
            }
        }
        //Updates scroll position
        scrollLastPos = st;
    });

    $('.ja-header').on ('hover', function () {
        $('html').removeClass ('scrollDown scrollUp').addClass ('hover');
        scrollDir = 0;
    })

    scrollToggle = function () {
        $('html').removeClass ('hover');
        if (scrollDir == 1) {
            $('html').addClass ('scrollDown').removeClass ('scrollUp');
        } else if (scrollDir == -1) {
            $('html').addClass ('scrollUp').removeClass ('scrollDown');
        } else {
            $('html').removeClass ('scrollUp scrollDown');
        }
		$('html').addClass ('animating');
		setTimeout(function(){ $('html').removeClass ('animating'); }, 1000);
    }

})(jQuery);