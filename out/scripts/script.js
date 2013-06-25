(function() {
  var getRootUrl, images, img, wait, _i, _len;

  wait = function(delay, callback) {
    return setTimeout(callback, delay);
  };

  $(document).foundation();

  images = document.getElementsByTagName('img');

  for (_i = 0, _len = images.length; _i < _len; _i++) {
    img = images[_i];
    img.onerror = function() {
      var a, li;
      a = this.parentNode;
      li = a.parentNode;
      if (li.tagName.toLowerCase() === 'li') {
        return li.parentNode.removeChild(li);
      } else {
        return this.parentNode.removeChild(this);
      }
    };
  }

  $.fn.preventScrollBubbling = function() {
    return $(this).bind('mousewheel', function(event, delta, deltaX, deltaY) {
      this.scrollTop -= deltaY * 20;
      return event.preventDefault();
    });
  };

  getRootUrl = function() {
    var rootUrl;
    rootUrl = document.location.protocol + "//" + (document.location.hostname || document.location.host);
    if (document.location.port || false) {
      rootUrl += ":" + document.location.port;
    }
    rootUrl += "/";
    return rootUrl;
  };

  $.expr[":"].internal = function(obj, index, meta, stack) {
    var $this, isInternalLink, rootUrl, url;
    $this = $(obj);
    url = $this.attr("href") || $this.data("href") || "";
    rootUrl = getRootUrl();
    isInternalLink = url.substring(0, rootUrl.length) === rootUrl || url.indexOf(":") === -1;
    return isInternalLink;
  };

  $.expr[":"].external = function(obj, index, meta, stack) {
    return $.expr[":"].internal(obj, index, meta, stack) === false;
  };

}).call(this);
