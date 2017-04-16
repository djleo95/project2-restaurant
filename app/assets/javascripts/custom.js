var wow = new WOW(
  {
    boxClass: 'wow',
    animateClass: 'animated',
    offset: 0,
    mobile: true,
    live: true,
    callback: function (box) {
    },
    scrollContainer: null
  }
);
wow.init();

function cycleToNextImage() {
  var e = imageIds[currentImageIndex];
  currentImageIndex++;
  if (currentImageIndex >= imageIds.length) {
    currentImageIndex = 0;
  }
  var t = {
    duration: fadeSpeed, queue: false
  };
  $("#" + e).fadeOut(t);
  $("#" + imageIds[currentImageIndex]).fadeIn(t);
}

var currentImageIndex = -1;
var imageIds = new Array;
var fadeSpeed;
var SCALING_MODE_NONE = 0;
var SCALING_MODE_STRETCH = 1;
var SCALING_MODE_COVER = 2;
var SCALING_MODE_CONTAIN = 3;
$.fn.backgroundCycle = function (e) {
  var t = $.extend({
    imageUrls: [], duration: 5e3, fadeSpeed: 1e3, backgroundSize: SCALING_MODE_NONE
  }, e);
  fadeSpeed = t.fadeSpeed;
  var n = this.css("margin-top");
  var r = this.css("margin-right");
  var i = this.css("margin-bottom");
  var s = this.css("margin-left");
  if (!this.is("#top")) {
    this.css({
      position: "relative"}
    );
  }
  var o = $(document.createElement("div"));
  var u = this.children().detach();
  o.append(u);
  imageIds = new Array;
  for (var a = 0; a < t.imageUrls.length; a++) {
    var f = "bgImage" + a;
    var l = t.imageUrls[a];
    var c = "cycle-bg-image";
    var h = $(document.createElement("div"));
    h.attr("id", f);
    h.attr("class", c);
    var p;
    switch (t.backgroundSize) {
      default:
        p = t.backgroundSize;
        break;
      case SCALING_MODE_NONE:
        p = "auto";
        break;
      case SCALING_MODE_STRETCH:
        p = "100% 100%";
        break;
      case SCALING_MODE_COVER:
        p = "cover";
        break;
      case SCALING_MODE_CONTAIN:
        p = "contain";
        break;
    }
    h.css({
      "background-image": "url('" + l + "')", "background-repeat": "no-repeat",
      "background-size": p, "-moz-background-size": p, "-webkit-background-size": p,
      position: "absolute", left: s, top: n, right: r, bottom: i, "z-index": "1"
    });
    this.append(h);
    imageIds.push(f);
  }
  o.css({
    position: "initial", left: s, top: n, right: r, bottom: i
  });
  this.append(o);
  $(".cycle-bg-image").hide();
  $("#" + imageIds[0]).show();
  setInterval(cycleToNextImage, t.duration);
}

var ready = function() {
  $("#top").backgroundCycle({
    imageUrls: [
      "http://i.imgur.com/RcIatVx.jpg", "http://i.imgur.com/6D3UQVa.jpg",
      "http://i.imgur.com/Kny7D7X.jpg", "http://i.imgur.com/kJVkmAH.jpg",
      "http://i.imgur.com/MzLd2iq.jpg", "http://i.imgur.com/HFIsjsh.jpg",
      "http://i.imgur.com/hJu4XkY.jpg", "http://i.imgur.com/abvjM0A.jpg"
    ],
    fadeSpeed: 1200,
    duration: 8000,
    backgroundSize: SCALING_MODE_COVER
  });
};

$(document).ready(ready);
$(document).on('click', '.edit_pass', function() {
  $('#edit_pass_show').toggleClass('edit-pass-content-hide', 'edit-pass-content-show');
});
$(document).on('click', '#searchclear', function(){
  $('#searchinput').val('');
});
$(document).ready(setTimeout(function(){
  $('.alert, .danger, .success, .error, .notice, .info').fadeOut(3000);
}, 4000));

$(document).on('turbolinks:load', function(){
  var showChar = 120;
  var ellipsestext = "...";
  var moretext = "Show more";
  var lesstext = "Show less";
  $('.more').each(function() {
    var content = $(this).html();
    if(content.length > showChar) {
      var c = content.substr(0, showChar);
      var h = content.substr(showChar, content.length - showChar);
      var html = c + '<span class="moreellipses">' + ellipsestext + '&nbsp;</span>' +
          '<span class="morecontent"><span>' + h +
          '</span>&nbsp;&nbsp;<a href="" class="morelink">' + moretext + '</a></span>';
      $(this).html(html);
    }
  });
  $(".morelink").click(function(){
    if($(this).hasClass("less")) {
      $(this).removeClass("less");
      $(this).html(moretext);
    } else {
      $(this).addClass("less");
      $(this).html(lesstext);
    }
    $(this).parent().prev().toggle();
    $(this).prev().toggle();
    return false;
  });
});

$(document).on('turbolinks:load', function(){
  $('.owl-carousel').owlCarousel({
    autoPlay: 4000,
    touchDrag: true,
    items: 2,
    itemsDesktop: [1119,2],
    itemsDesktopSmall: [979, 2],
    itemsTablet: [768,2],
    itemsMobile: [479,1]
  });
})

$(document).on('turbolinks:load', function() {
  $('.datepicker').datepicker({
    constrainInput: true,
    autoSize: true,
    dateFormat: 'dd-mm-yy',
    firstDay: 1,
    changeYear: true,
    changeMonth: true
  });
  $('#hideshow').on('click', function () {
    $('#content').toggle('show');
  });
})
