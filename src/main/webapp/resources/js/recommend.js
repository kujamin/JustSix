// HTML 요소를 가져옵니다.
var radio = document.getElementById("랩힙합");

// 클릭 이벤트 리스너를 추가합니다.
radio.addEventListener("click", function() {
  // 현재 체크 상태를 확인합니다.
  var isChecked = radio.checked;

  // 체크 상태를 반전시킵니다.
  radio.checked = !isChecked;
});