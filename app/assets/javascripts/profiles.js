$(document).ready(function(){
  $('.users-slider').slick({
  infinite: true,
  slidesToShow: 3,
  slidesToScroll: 3,
  dots: true,
  arrows: true,
  centerMode: true,
  variableWidth: false
  });

  $('.requests-slider').slick({
  infinite: true,
  slidesToShow: 3,
  slidesToScroll: 3,
  dots: false,
  arrows: true,
  centerMode: false,
  variableWidth: false
  });

});
