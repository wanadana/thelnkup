$(document).ready(function(){
 //  $('.users-slider').slick({
 //    // infinite: true,
 //    // slidesToShow: 3,
 //    // slidesToScroll: 3,
 //    // nextArrow: '<i class="fa fa-arrow-right"></i>',
 //    // prevArrow: '<i class="fa fa-arrow-left"></i>',
 //    // dots: true,
 //    infinite: false,
 //    speed: 300,
 //    slidesToShow: 3,
 //    slidesToScroll: 3,
 //    responsive: [
 //      {
 //        breakpoint: 1024,
 //        settings: {
 //          slidesToShow: 3,
 //          slidesToScroll: 3,
 //          infinite: true,
 //          dots: true
 //        }
 //      },
 //      {
 //        breakpoint: 600,
 //        settings: {
 //          slidesToShow: 2,
 //          slidesToScroll: 2
 //        }
 //      },
 //      {
 //        breakpoint: 480,
 //        settings: {
 //          slidesToShow: 1,
 //          slidesToScroll: 1
 //        }
 //      }
 //      // You can unslick at a given breakpoint now by adding:
 //      // settings: "unslick"
 //      // instead of a settings object
 //    ]




 // });
  $('.users-slider').slick({
    centerMode: true,
    centerPadding: '60px',
    slidesToShow: 3,
    responsive: [
      {
        breakpoint: 768,
        settings: {
          arrows: false,
          centerMode: true,
          centerPadding: '40px',
          slidesToShow: 3
        }
      },
      {
        breakpoint: 480,
        settings: {
          arrows: false,
          centerMode: true,
          centerPadding: '40px',
          slidesToShow: 1
        }
      }
    ]
  });
});
