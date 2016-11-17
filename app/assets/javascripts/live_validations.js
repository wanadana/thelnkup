$(document).ready(function(){
  $('#group_link').keyup(function(){
    setTimeout(function(){
    var input_length = $('#group_link').val().length;
    var feedback = $('#group_link_validation');

    if(input_length < 22) {
      feedback.addClass('show');
      feedback.text("Too short my friend")
    } else if (input_length > 22) {
      feedback.addClass('show')
      feedback.text("Too long my friend")
    } else {
      feedback.removeClass('show');
    }
  }, 1200)

  });
});
