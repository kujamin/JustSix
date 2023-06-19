// Window load event handler
window.addEventListener('load', function() {
  // panel-faq-container
  const panelFaqContainer = document.querySelectorAll(".panel-faq-container"); // NodeList 객체
  
  // panel-faq-answer
  let panelFaqAnswer = document.querySelectorAll(".panel-faq-answer");

  // btn-all-close
  const btnAllClose = document.querySelector("#btn-all-close");

  // 반복문 순회하면서 해당 FAQ제목 클릭시 콜백 처리
  for (let i = 0; i < panelFaqContainer.length; i++) {
    panelFaqContainer[i].addEventListener('click', function() { // 클릭시 처리할 일
      // 다른 FAQ 제목들의 active 클래스 제거
      for (let j = 0; j < panelFaqContainer.length; j++) {
        if (j !== i) {
          panelFaqAnswer[j].classList.remove('active');
        }
      }
      // 클릭한 FAQ 제목에 active 클래스 추가
      panelFaqAnswer[i].classList.add('active');
    });
  }

  if (btnAllClose) {
    btnAllClose.addEventListener('click', function() {
      // 버튼 클릭시 처리할 일  
      for (let i = 0; i < panelFaqAnswer.length; i++) {
        panelFaqAnswer[i].classList.remove('active');
      }
    });
  }
});

// Function to convert seconds to time format
function convertSecondsToTime(seconds) {
  var minutes = Math.floor(seconds / 60); // 분 계산
  var remainingSeconds = seconds % 60; // 초 계산
  // 분과 초를 문자열로 변환하여 반환
  return minutes + ":" + ("0" + remainingSeconds).slice(-2);
}

// Function to convert and display playtime
function convertAndDisplayPlaytime(playtime) {
  var formattedTime = convertSecondsToTime(playtime);
  document.write("" + formattedTime);
}