function convertSecondsToTime(seconds) {
    var minutes = Math.floor(seconds / 60); // 분 계산
    var remainingSeconds = seconds % 60; // 초 계산

    // 분과 초를 문자열로 변환하여 반환
    return minutes + ":" + ("0" + remainingSeconds).slice(-2);
}

function convertAndDisplayPlaytime(playtime) {
    var formattedTime = convertSecondsToTime(playtime);
    document.write("재생시간: " + formattedTime);
}
