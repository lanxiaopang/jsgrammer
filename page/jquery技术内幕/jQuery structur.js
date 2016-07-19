(function(window,undefined){
    var jQuery = (function(){
        var jQuery = (function(selector,context){
            return new jQuery.fn.init(selector,context,rootjQuery);
        })();
        return jQuery;
    })();
})(window)