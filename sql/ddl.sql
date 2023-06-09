CREATE TABLE music
(
    id         INT PRIMARY KEY AUTO_INCREMENT,
    title      VARCHAR(100) NOT NULL,
    album      VARCHAR(100) NOT NULL,
    artist     VARCHAR(100) NOT NULL,
    playtime   INT          NOT NULL,
    lyrics     VARCHAR(5000),
    genre      VARCHAR(50),
    situation  VARCHAR(50),
    feel       VARCHAR(50),
    weather    VARCHAR(50),
    popular    VARCHAR(50),
    lyricstype VARCHAR(50),
    country    VARCHAR(50),
    writer     VARCHAR(100),
    albumpath  VARCHAR(200),
    link       VARCHAR(200)
);

INSERT INTO music (title, album, artist, playtime, lyrics, genre, situation, feel, weather, popular, lyricstype, country, writer, albumpath, link)
VALUES
    ('추적이는 여름 비가 되어', '장범준', '장범준 싱글', 274,
     '넌 늘 머리 위를 지나가는 뜬구름처럼#내 손에 닿지 마라#이 마음이 얼마나 당신을#좋아라 하는지 알지 마라#네가 준 외로움 괴로움#가슴 저림까지 전부 내가#사랑이라 부를 테니#조금의 여지만 주고 스쳐 가라#때로는 5월 같은 미소로#내 불안을 녹이고#때로는 1월 같은 눈빛으로#심장을 얼려줘#아찔한 혼란 속을 반갑게 허우적대며#일방적인 그리움에 젖은 채 노래를 불러#내 환상 속에 살아 숨을 쉬어줘#미지한 우주처럼 가질 수 없는 널#영원히 사랑할 수 있게#You are my Cosmos#나의 우주야#쳐다볼 수조차 없게#그 눈부심을 잃지 마#You are my Cosmos#나의 우주야#떨어지지 마라 나의 꽃잎아#She got 조화로운 이목구비#웃을 때 과즙상 fruity#
꽃잎을 삼킨 듯한#
목소리가 만들어낸 고고한 분위기#
연약한 들숨 날숨에서조차#
황홀한 감각을 느끼지#
이 모든 게 미술관 그림#
바라봄만으로 영감을 주지#
나의 여왕 무료한 하루를#
채우는 유일한 열망#
Give it to me#
날 망가뜨릴 새로운 절망#
사랑에 눈을 뜬 동시에#
makes me blind#
내 환상 속에 살아 숨을 쉬어줘#
미지한 우주처럼 가질 수 없는 널#
영원히 사랑할 수 있게#
You are my Cosmos#
나의 우주야#
쳐다볼 수조차 없게#
그 눈부심을 잃지 마#
You are my Cosmos#
나의 우주야#
떨어지지 마라 나의 꽃잎아#
You are my Cosmos#
나의 우주야#
쳐다볼 수조차 없게#
그 눈부심을 잃지 마#
You are my Cosmos#
나의 우주야#
떨어지지 마라 나의 꽃잎아#',
     '발라드', '새벽두시', '설렘', '비올때', '대중적인', '사랑노래', '한국', '구자민', 'album1', 'https://www.youtube.com/watch?v=V47v-AXQBSw'),
    ('Dangerously', 'Nine Track Mind', 'Charlie Puth', 210,
     'This is gonna hurt but I blame myself first Cause I ignored the truth Drunk off that love, my head up There''s no forgetting you You''ve awoken me, but you''re choking me I was so obsessed Gave you all of me, and now honestly, I got nothing left I loved you dangerously More than the air that I breathe Knew we would crash at the speed that we were going Didn''t care if the explosion ruined me Baby, I loved you dangerously Mmmm, mmmm I loved you dangerously Usually, I hold the power with both my hands Tied behind my back Look at how things change, cause now you''re the train And I''m tied to the track You''ve awoken me, but you''re choking me I was so obsessed Gave you all of me, and now honestly, I got nothing left Cause I loved you dangerously More than the air that I breathe Knew we would crash at the speed that we were going Didn''t care if the explosion ruined me Baby, I loved you dangerously You took me down, down, down, down And kissed my lips quick goodbye I see it now, now, now, now It was a matter of time You know I know, there''s only one place this could lead Cause you are the fire, I''m gasoline I love you, I love you, I love you I loved you dangerously Ooh, more than the air that I breathe Oh now, knew we would crash at the speed that we were going Didn''t care if the explosion ruined me Oh, oh baby, I loved you dangerously Mmmm, mmmm Ooh, I loved you dangerously Ooh ooh, I loved you dangerously',
     'Rock', 'Driving', 'Aggressive', 'Rainy', 'No', 'English', 'United Kingdom', 'Writer 2', '/path/to/album2', 'https://www.example.com/song2'),
    ('Song 3', 'Album 3', 'Artist 3', 180, 'Lyrics for Song 3', 'R&B', 'Relaxation', 'Chill', 'Cloudy', 'Yes', 'English', 'United States', 'Writer 3', '/path/to/album3', 'https://www.example.com/song3'),
    ('Song 4', 'Album 4', 'Artist 4', 195, 'Lyrics for Song 4', 'Hip-hop', 'Exercise', 'Motivated', 'Sunny', 'Yes', 'English', 'United States', 'Writer 4', '/path/to/album4', 'https://www.example.com/song4'),
    ('Song 5', 'Album 5', 'Artist 5', 220, 'Lyrics for Song 5', 'Pop', 'Romantic', 'Dreamy', 'Clear', 'No', 'English', 'Canada', 'Writer 5', '/path/to/album5', 'https://www.example.com/song5');
