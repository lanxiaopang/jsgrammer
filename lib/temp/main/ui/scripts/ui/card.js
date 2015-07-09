define(["jquery"], function ($) {
    return function (data) {
        var self = {};
        if (data && typeof data === "object") {
            self.data = data;
        }
        self.currentIndex = 0;
        self.get = function (nameOrIndex) {
            if (isNaN(nameOrIndex) && nameOrIndex) {
                if (self.data.length === undefined) {
                    return $(self.data[nameOrIndex]);
                }
            }
            else if (isNaN(nameOrIndex) === false && nameOrIndex >= 0) {
                if (self.data.length === undefined) {
                    var i = 0;
                    for (var item in self.data) {
                        if (i == nameOrIndex) {
                            return $(self.data[i]);
                        }
                        i++;
                    }
                }
                else {
                    if (nameOrIndex < self.data.length) {
                        return $(self.data[nameOrIndex]);
                    }
                }
            }
        }
        self.next = function () {
            var index = self.currentIndex + 1;
            var card = self.get(index);
            if (card) {
                self.hideAll();
                card.show();
                self.currentIndex++;
            }
        }

        self.prev = function () {
            var index = self.currentIndex - 1;
            var card = self.get(index);
            if (card) {
                self.hideAll();
                card.show();
                self.currentIndex--;
            }
        }

        self.show = function (nameOrIndex) {
            nameOrIndex = nameOrIndex || 0;

            var card = self.get(nameOrIndex);
            if (card) {
                if (isNaN(nameOrIndex)) {
                   var  index = 0;
                    for (var name in self.data) {
                        if (name === nameOrIndex) {
                            self.currentIndex = index;
                            break;
                        }
                        index++;
                    }
                }
                else {
                    self.currentIndex = parseInt(nameOrIndex);
                }
                self.hideAll();
                card.show();
            }
        }


        self.hideAll = function () {
            if (self.data && typeof self.data === "object") {
                for (var i in self.data) {
                    var card = self.get(i);
                    if (card) {
                        card.hide();
                    }
                }
            }
        }

        self.show();
        return self;
    }
});