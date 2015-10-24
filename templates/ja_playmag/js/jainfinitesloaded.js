(function($){
    $(document).ready(function(){
        //Ajax load more
        if($('.blog-featured .items-wrap').length >0){
            //isotope grid
            var $container = $('.blog-featured .items-wrap'),
                paginfo = $('#page-next-link'),
                nextbtn = $('#infinity-next'),
                pathobject = {
                    init: function(link){
                        var pagenext = $('#page-next-link'),
                            fromelm = false;

                        if(!link) {
                            fromelm = true;
                            link = pagenext.attr('href') || '';
                        }

                        this.path = link;

                        var match = this.path.match(/((page|limitstart|start)[=])(\d*)(&*)/i);

                        if(match){
                            this.type = match[2].toLowerCase();
                            this.number = parseInt(match[3]);
                            this.limit = this.type == 'page' ? 1 : this.number;
                            this.number = this.type == 'page' ? this.number : 1;
                            this.init = 0;

                            var limit = parseInt(pagenext.attr('data-limit')),
                                init = parseInt(pagenext.attr('data-start'));

                            if(isNaN(limit)){
                                limit = 0;
                            }

                            if(isNaN(init)){
                                init = 0;
                            }

                            if(fromelm && this.limit != limit && (this.type == 'start' || this.type == 'limitstart')){

                                this.init = Math.max(0, init);
                                this.number = 1;
                                this.limit = limit;
                            }

                        } else {
                            this.type = 'unk';
                            this.number = 2;
                            this.path = this.path + (this.path.indexOf('?') == -1 ? '?' : '') + 'start=';
                        }

                        var urlparts = this.path.split('#');
                        if(urlparts[0].indexOf('?') == -1){
                            urlparts[0] += '?tmpl=component';
                        } else {
                            urlparts[0] += '&tmpl=component';
                        }

                        this.path = urlparts.join('#');
                    },

                    join: function(){
                        if(pathobject.type == 'unk'){
                            return pathobject.path + pathobject.number++;
                        } else{
                            return pathobject.path.replace(/((page|limitstart|start)[=])(\d*)(&*)/i, '$1' + (pathobject.init + pathobject.limit * pathobject.number++) + '$4');
                        }
                    }
                };

            pathobject.init();

            $container.infinitescroll({
                    navSelector  : '#page-nav',    // selector for the paged navigation
                    nextSelector : '#page-nav a',  // selector for the NEXT link (to page 2)
                    itemSelector : '.items',     // selector for all items you'll retrieve
                    loading: {
                        finished: function(){
                            $('#infscr-loading').remove();
                        },
                        finishedMsg: T3JSVars.finishedMsg,
                        img: T3JSVars.tplUrl + '/images/ajax-load.gif',
                        msgText : '',
                        speed : 'fast',
                        start: undefined
                    },
                    state: {
                        isDuringAjax: false,
                        isInvalidPage: false,
                        isDestroyed: false,
                        isDone: false, // For when it goes all the way through the archive.
                        isPaused: false,
                        currPage: 0
                    },
                    pathParse: pathobject.join,
                    path: pathobject.join,
                    binder: $(window), // used to cache the selector for the element that will be scrolling
                    extraScrollPx: 150,
                    dataType: 'html',
                    appendCallback: true,
                    bufferPx: 350,
                    debug : false,
                    errorCallback: function () {
                        nextbtn.addClass('disabled').html(T3JSVars.finishedMsg);
                    },
                    prefill: false, // When the document is smaller than the window, load data until the document is larger or links are exhausted
                    maxPage: parseInt(nextbtn.attr('data-page-total')) // to manually control maximum page (when maxPage is undefined, maximum page limitation is not work)
                },
                // call Isotope as a callback
                function( items ) {
                    if((items.length < parseInt(paginfo.attr('data-limit') || nextbtn.attr('data-limit') || 0)) || (parseInt(paginfo.attr('data-total')) == $container.find('.item.isotope-item').length)){
                        nextbtn.addClass('disabled').html(T3JSVars.finishedMsg);
                    }
                    //update disqus if needed
                    if(typeof DISQUSWIDGETS != 'undefined'){
                        DISQUSWIDGETS.getCount();
                    }
                });

            $(window).unbind('.infscr');

            //Next click
            if(nextbtn.length){
                nextbtn.on('click', function(){
                    if(!nextbtn.hasClass('finished')){
                        $container.infinitescroll('retrieve');
                    }
                    return false;
                });
            }
        }
    })
})(jQuery);