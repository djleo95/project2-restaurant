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

var slideshow = function() {
  $('#top').backgroundCycle({
    imageUrls: [
      "http://i.imgur.com/6D3UQVa.jpg",
      "http://i.imgur.com/Kny7D7X.jpg", "http://i.imgur.com/kJVkmAH.jpg",
      "http://i.imgur.com/MzLd2iq.jpg", "http://i.imgur.com/HFIsjsh.jpg",
      "http://i.imgur.com/hJu4XkY.jpg", "http://i.imgur.com/abvjM0A.jpg"
    ],
    fadeSpeed: 1200,
    duration: 8000,
    backgroundSize: SCALING_MODE_COVER
  });
};

$(document).ready(slideshow);
$(document).on('page:change', slideshow);
$(document).on('click', '.edit-pass', function() {
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
    stopOnHover: true,
    items: 2,
    itemsDesktop: [1119,2],
    itemsDesktopSmall: [979, 2],
    itemsTablet: [768,2],
    itemsMobile: [479,1]
  });
});

$(document).on('turbolinks:load', function() {
  $('.datepicker').datepicker({
    constrainInput: true,
    autoSize: true,
    dateFormat: 'yyyy-mm-dd',
    firstDay: 1,
    changeYear: true,
    changeMonth: true
  });
  $('#hideshow').on('click', function () {
    $('#content').toggle('show');
  });
});

$(document).on('click', '#btn-find-table', function() {
  var val_cap = $('#capacity_field').val();
  var val_date = $('#date_field').val();
  var val_time = $('#time_field').val();
  var val_id = $('#chosen_table_value').val();
  $('#btn-summit-table').css('display','inline-block');
  $.ajax({
    type:'GET',
    url: '/tables',
    dataType: "json",
    data: {
        capacity_gteq: val_cap,
        orders_day_eq: val_date,
        orders_time_in_eq: val_time,
        id: val_id
    }
  })
  .done(function(data) {
    for(var i=0;i<19;i++) {
      $('#btn-'+ i).removeClass('btn-maru').removeClass('btn-choose').addClass('btn-batsu');
    }
    $.each(data, function (index, element) {
      $('#btn-' + element.code).addClass('btn-maru').removeClass('btn-batsu');
      console.log(element.code)
      console.log(element.code);
    });
  });
});

$(document).ready(function(){
  $('.datepicker2').datepicker({
    format: 'yyyy-mm-dd',
  });
});

$(document).ready(function(){
  $('.btn-table').click(function(){
    $('.btn-table').removeClass('btn-choose');
    $(this).addClass('btn-choose');
  })
});

$(document).on('click', '#btn-summit-table', function(e) {
  e.preventDefault();
  var a = 0;
  var val_cap = $('#capacity_field').val();
  var val_date = $('#date_field').val();
  var val_time = $('#time_field').val();
  if(val_cap == "" || val_date == "" || val_time == "") {
    a = 1;
    alert("Please fill all field");
  } else if (!$('.btn-table').hasClass('btn-choose')) {
    a = 2;
  }

  if(a == 0) {
    $('#myModal').css('display','block');
  } else if(a == 1) {

  } else if(a ==2) {
    alert("Please choose prefer table");
  }
});

$(document).on('click','.close', function(){
  $('#myModal').css('display','none');
});

$(document).on('click','#btn-submit-guest', function() {
  $(this).css('display','none');
  $('#btn-submit-order').css('display','block');
  $('#guest-info').css('display','none');
  $('#guest-info-confirmed').css('display','block');
  $('#hide-after-guest-info').css('display','none');
  $('#show-after-guest-info').removeClass('hide')
});

$(document).on('click', '#btn-submit-order',function(e){
  e.preventDefault();
  function makeid()
  {
    var text = "";
    var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";

    for( var i=0; i < 5; i++ )
      text += possible.charAt(Math.floor(Math.random() * possible.length));

    return text;
  }
  var val_cap = makeid();
  var val_date = $('#date_field').val();
  var val_time = $('#time_field').val();
  var id_table = $('.btn-table.btn-choose').text();
  $('#myModal').css('display','none');
  $.ajax({
    type:'POST',
    url: '/orders',
    dataType: "json",
    data: {
      code: val_cap,
      day: val_date,
      time_in: val_time,
      table_id: id_table
    }
  }).success(function(d){
    location.replace(d.path1);
  });
});
$(document).on('turbolinks:load', function(){
  $('.carousel').owlCarousel({
    autoPlay: 3000,
    stopOnHover: true,
    touchDrag: true,
    rewindNav: true,
    rewindSpeed: 600,
    pagination: false,
    navigation: true,
    navigationText: ["<img src='http://dynarules.com/Images/arrleft.png'>","<img src='http://www.freeiconspng.com/uploads/right-arrow-icon-27.png'>"],
    items: 4,
    itemsDesktop: [1119,4],
    itemsDesktopSmall: [979, 3],
    itemsTablet: [768,2],
    itemsMobile: [479,1]
  });
})
