$(function(){

  $(".tab").on("click", function(e){
    // Change active tab
    $(this).toggleClass('active');
    // $(".tab").removeClass('active');

  });

});


$(document).ready(function() {

  $('.tab').click(function() {
    $(this).children('.content-block').slideToggle('slow');
  });

});
