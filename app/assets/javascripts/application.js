//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require live_validations
//= require jquery.slick
//= require_tree .

$(document).ready(function(){
  $('.button').each(function() {
    $(this).append('<span></span><span></span>')
  });
});
