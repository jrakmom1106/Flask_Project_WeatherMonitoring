# Flask_Project_WeatherMonitoringSystem
## 프로젝트 목적
Flask 파이썬 웹프레임워크를 사용하여 라즈베리파이에서 받아온 센서 정보를 읽어 웹으로 보내주도록 구성

동작시연 URL : https://www.youtube.com/watch?v=08ClT0fghRM
### URL 규칙
| 기능 | method | url |
| --- | --- | --- |
| 로그인 화면 | GET | /auth/login |
| 로그인 처리| POST | /auth/login |
| 가입 화면 | GET | /auth/register |
| 가입 처리 | POST | /auth/register |
| 로그아웃 처리 | GET | /auth/logout |
### 게시판 URL
| method | url |
| --- | --- |
| GET | /board/list |
| GET | /board/view/1 |
| GET | /board/add |
| POST | /board/add |
| GET | /board/update |
| POST | /board/update/1 |
| POST | /board/delete/1 |

### DB

### 사용자

| 구분 | 필드명 | 타입 | 비고 |
| ---- | ---- | ---- | ---- |
| 구분자 | id | integer | PRIMARY KEY |
| 이름 | username | text |  |
| 전화번호 | phone | TEXT |  |
| 이메일 | email | TEXT |  |
| 비밀번호 | password | TEXT | |
| 사용자 id | user_id | INT | 사용자 테이블의 아이디 |
| 생성일시 | created | TEXT | |
| 수정일시 | updated | TEXT | |

### 공지사항
| 구분 | 필드명 | 타입 | 비고 |
| ---- | ---- | ---- | ---- |
| 구분자 | id | INT | PRIMARY KEY |
| 사용자 id | user_id | INT | admin만 공지사항 게시 가능 |
| 제목 | title | TEXT |  |
| 내용 | content | TEXT |  |
| 생성일시 | created | TEXT |  |
| 수정일시 | updated | TEXT |  |

### 기기
| 구분 | 필드명 | 타입 | 비고 |
| ---- | ---- | ---- | ---- |
| 구분자 | id | INT | PRIMARY KEY |
| 사용자 id | user_id | INT | admin만 기기 등록 가능 |
| 지역명 | name | TEXT |  |
| API KEY | api | TEXT | 지역별 센서 구분 |
| 생성일시 | created | TEXT |  |
| 수정일시 | updated | TEXT |  |

### 모니터링 테이블
| 구분 | 필드명 | 타입 | 비고 |
| ---- | ---- | ---- | ---- |
| 구분자 | id | INT | PRIMARY KEY |
| 사용자 id | user_id | INT | 사용자 테이블 |
| 기기 id | device_id | INT | 기기 테이블 |
| 미세먼지 | Dust_ratio | TEXT | 각 센서 값  |
| 습도 | H_ratio | TEXT |  |
| 온도 | T_ratio | TEXT |  |
| 조도 | lux | TEXT |  |
| 우천여부 | weather | TEXT |  |
| 생성일시 | created | TEXT |  |
| 수정일시 | updated | TEXT |  |

### 라즈베리파이
```
sudo apt-get install -y python3 python3-pip python-dev        # 파이썬 개발 킷
sudo pip3 install rpi.gpio                                    # gpio
git clone https://github.com/adafruit/Adafruit_Python_DHT.git # DHT 라이브러리
# 추가로 해당 경로에 setup.py 설치해주어야 한다(DHT 라이브러리 경로)

pip install requests
pip install smbus
