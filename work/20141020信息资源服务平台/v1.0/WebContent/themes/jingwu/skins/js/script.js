var Effect = (function() {
    
    var Slider = function(o) {
        this.setting      = typeof o === 'object' ? o : {};
        this.target       = this.setting.target || 'slider';
        this.showMarkers  = this.setting.showMarkers || false;
        this.showControls = this.setting.showControls || false;
        //###
        this.showTabs 	  = this.setting.showTabs || false;
        this.timer        = null;
        this.currentTime  = null;
        this.ms           = 35;
        this.autoMs       = 5000;
        this.iTarget      = 0;
        this.nextTarget   = 0;
        this.speed        = 0;
        
        this.init();
        this.handleEvent();
    };
    
    Slider.prototype = {
        init: function() {
            this.obj      = document.getElementById(this.target);
            this.oUl      = this.obj.getElementsByTagName('ul')[0];
            this.aUlLis   = this.oUl.getElementsByTagName('li');
            this.width    = this.aUlLis[0].offsetWidth;
            this.number   = this.aUlLis.length;
            //###
            this.tabBox = document.getElementById("tab-box");
            this.aList   = this.tabBox.getElementsByTagName('a');
            
           // this.tabContent = document.getElementById("tab-content");
           // this.tabDivList   = this.tabContent.getElementsByTagName('div');
            
            
            this.oUl.style.width = this.width * this.number + 'px';
            
            if(this.showMarkers) {
                var oDiv = document.createElement('div');
                var aLis = [];
                for(var i = 0; i < this.number; i++) {
                    aLis.push('<li>'+ (i+1) +'<\/li>');
                };
                oDiv.innerHTML = '<ol>'+ aLis.join('') +'<\/ol>';
                this.obj.appendChild(oDiv.firstChild);
                this.aLis = this.obj.getElementsByTagName('ol')[0].getElementsByTagName('li');
                this.aLis[0].className = 'active';
                oDiv = null;
            };
            
            if(this.showControls) {
                this.oPrev = document.createElement('p');
                this.oNext = document.createElement('p');
                this.oPrev.className = 'prev';
                this.oPrev.innerHTML = '&laquo;';
                this.oNext.className = 'next';
                this.oNext.innerHTML = '&raquo;';
                this.obj.appendChild(this.oPrev);
                this.obj.appendChild(this.oNext);
                
            };
            
        },
        
        handleEvent: function() {
            var that = this;
            
            this.currentTime = setInterval(function() {
                that.autoPlay();
            }, this.autoMs);
            
            this.addEvent(this.obj, 'mouseover', function() {
                clearInterval(that.currentTime);
            });
            
            this.addEvent(this.obj, 'mouseout', function() {
                that.currentTime = setInterval(function() {
                    that.autoPlay();
                }, that.autoMs);
            });
            
            if(this.showMarkers) {
                for(var i = 0; i < this.number; i++) {
                    var el = this.aLis[i];
                    (function(index) {
                        that.addEvent(el, 'mouseover', function() {
                            that.goTime(index);
                        });
                    })(i);
                };
            };
            
            if(this.showControls) {
                this.addEvent(this.oPrev, 'click', function() {
                    that.fnPrev();
                });
                this.addEvent(this.oNext, 'click', function() {
                    that.autoPlay();
                });
            };
           //###
            if(this.showTabs){
            	for(var i = 0; i < this.number; i++) {
                    var ael = this.aList[i];
                    (function(index) {
                                that.addEvent(ael, 'mouseover', function() {
                                    for(var i = 0; i < 4; i++){
                                        var divel = document.getElementById(("tab-"+i));
                                        divel.style.display="none";
                                    }
                                    var divel = document.getElementById(("tab-"+index));
                                    that.goTime(index);
                                    divel.style.display="block";
                        });
                        /*that.addEvent(ael, 'mouseout', function() {
                        	for(var d=0;d<this.number;d++){
                        		var divel_j = document.getElementById(("tab-"+d));
                        		divel_j.style.display="none";
                        	};
                        });*/
                    })(i);
                };
            };
        },
        
        addEvent: function(el, type, fn) {
            if(window.addEventListener) {
                el.addEventListener(type, fn, false);
            }
            else if(window.attachEvent) {
                el.attachEvent('on' + type, fn);
            };
        },
        
        fnPrev: function() {
            this.nextTarget--;
            if(this.nextTarget < 0) {
                this.nextTarget = this.number - 1;
            };
            this.goTime(this.nextTarget);
        },
        
        autoPlay: function() {
            this.nextTarget++;
            if(this.nextTarget >= this.number) {
                this.nextTarget = 0;
            };
            this.goTime(this.nextTarget);
        },
        
        goTime: function(index) {
            var that = this;
			//######业务
			//alert($("").attr("display"));
//            changeTabs(index);
            if(this.showMarkers) {
                for(var i = 0; i < this.number; i++) {
                    i == index ? this.aLis[i].className = 'active' : this.aLis[i].className = '';
                };
            };
            
            this.iTarget = -index * this.width;
            if(this.timer) {
                clearInterval(this.timer);
            };
            this.timer = setInterval(function() {
                that.doMove(that.iTarget);
            }, this.ms);
        },
        
        doMove: function(target) {
            this.oUl.style.left = this.speed + 'px';
            this.speed += (target - this.oUl.offsetLeft)/3;
            if(Math.abs(target - this.oUl.offsetLeft) === 0) {
                this.oUl.style.left = target + 'px';
                clearInterval(this.timer);
                this.timer = null;
            };
        }

    };
    
    return {
        
        slider: function(o) {
            var tt = new Slider(o);
        }
    };
})();