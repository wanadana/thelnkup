$(document).ready(function(){
  $('#validate-field').blur(function(){
    var input_length = $('#validate-field').val().length;
    var feedback = $('#group_link_validation');

    if(input_length < 22) {
      feedback.addClass('show');
      feedback.text("Too short")
    } else if (input_length > 22) {
      feedback.addClass('show')
      feedback.text("Too long")
    } else {
      feedback.removeClass('show');
    }

  });
});
