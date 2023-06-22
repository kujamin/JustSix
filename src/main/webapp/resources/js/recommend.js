// 헤더 / 서치팝업
$(".header .icon-login").click(function() {
  $(".mypage_pop").fadeToggle();
});
$(".mypage_pop .fa-times-circle").click(function() {
  $(".mypage_pop").fadeOut();
});

function clearAllRadioButtons() {
  var radioButtons = document.querySelectorAll('input[type="radio"]');
  for (var i = 0; i < radioButtons.length; i++) {
    radioButtons[i].checked = false;
  }
}