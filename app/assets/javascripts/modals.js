$(document).ready(function(){
$(document).on("click",".btn-log",function(){
  $('#loginModal').modal('hide');
  $('#signupModal').modal('show');
})
$(document).on("click",".btn-sign",function(){
  $('#signupModal').modal('hide');
  $('#loginModal').modal('show');
})

$(document).on("click",".btn-signup",function(){
  $('#signupModal').modal('hide');
  $('requireinfosModal').modal('show');
})
});

