// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .




//children_slider

$(function() {
                //caching
				//next and prev buttons
				var $cn_next	= $('#cn_next');
				var $cn_prev	= $('#cn_prev');
				//wrapper of the left items
				var $cn_list 	= $('#cn_list');
				var $pages		= $cn_list.find('.cn_page');
				//how many pages
				var cnt_pages	= $pages.length;
				//the default page is the first one
				var page		= 1;
				//list of news (left items)
				var $items 		= $cn_list.find('.cn_item');
				//the current item being viewed (right side)
				var $cn_preview = $('#cn_preview');
				//index of the item being viewed.
				//the default is the first one
				var current		= 1;

				/*
				for each item we store its index relative to all the document.
				we bind a click event that slides up or down the current item
				and slides up or down the clicked one.
				Moving up or down will depend if the clicked item is after or
				before the current one
				*/
				$items.each(function(i){
					var $item = $(this);
					$item.data('idx',i+1);

					$item.bind('click',function(){
						var $this 		= $(this);

            //chk if currently clicked link is already displaying
            if(!$this.hasClass('selected')){
              // if not, show 'click' link on previously hidden link
              // & hide the 'click' link on current link
						  $cn_list.find('.selected').removeClass('selected').find('.click').show('.click');
						  $this.addClass('selected').find('.click').hide('.click');
            }


						var idx			= $(this).data('idx');
						var $current 	= $cn_preview.find('.cn_content:nth-child('+current+')');
						var $next		= $cn_preview.find('.cn_content:nth-child('+idx+')');

						if(idx > current){
							$current.stop().animate({'top':'-655px'},600,'easeOutBack',function(){
								$(this).css({'top':'652px'});
							});
							$next.css({'top':'652px'}).stop().animate({'top':'0px'},600,'easeOutBack');
						}
						else if(idx < current){
							$current.stop().animate({'top':'652px'},600,'easeOutBack',function(){
								$(this).css({'top':'652px'});
							});
							$next.css({'top':'-655px'}).stop().animate({'top':'0px'},600,'easeOutBack');
						}
						current = idx;
					});
				});


        /*
          Hide "click" on the default link
        */
        $cn_list.find('.selected').find('.click').hide();


				/*
				shows next page if exists:
				the next page fades in
				also checks if the button should get disabled
				*/
				$cn_next.bind('click',function(e){
					var $this = $(this);
					$cn_prev.removeClass('disabled');
					++page;
					if(page == cnt_pages)
						$this.addClass('disabled');
					if(page > cnt_pages){
						page = cnt_pages;
						return;
					}
					$pages.hide();
					$cn_list.find('.cn_page:nth-child('+page+')').fadeIn();
					e.preventDefault();
				});
				/*
				shows previous page if exists:
				the previous page fades in
				also checks if the button should get disabled
				*/
				$cn_prev.bind('click',function(e){
					var $this = $(this);
					$cn_next.removeClass('disabled');
					--page;
					if(page == 1)
						$this.addClass('disabled');
					if(page < 1){
						page = 1;
						return;
					}
					$pages.hide();
					$cn_list.find('.cn_page:nth-child('+page+')').fadeIn();
					e.preventDefault();
				});

            });
